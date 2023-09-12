import 'package:dio/dio.dart';
import 'package:github_app/src/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

const _baseUrl = 'https://api.github.com';

final dioClientProvider = Provider((ref) => Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          'Accept': 'application/vnd.github+json',
          'X-GitHub-Api-Version': '2022-11-28',
          'Authorization': 'Bearer ${Env.githubToken}'
        },
      ),
    ));

class SearchApiService {
  SearchApiService({required this.dio});
  final Dio dio;
  // api client

  /// search user
  Future<Response> searchUsers(String query) async {
    try {
      final response = await dio.get('/search/users?q=$query');
      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  ///search repositories
  Future<Response> searchRepositories(String query) async {
    try {
      final response = await dio.get('/search/repositories?q=$query');
      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  ///search repositories
  Future<Response> getUser(String username) async {
    try {
      final response = await dio.get('/users/$username');

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  ///get users repositories
  Future<Response> getUsersRepos(String username) async {
    try {
      // https://api.github.com/users/USERNAME/repos
      final response = await dio.get('/users/$username/repos');

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  Future<Response> getDataFromURL(String url) async {
    try {
      // https://api.github.com/users/USERNAME/repos
      final response = await dio.get(url);
      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }
}

final searchApiServiceProvider = Provider<SearchApiService>(
  (ref) {
    final dio = ref.watch(dioClientProvider);
    return SearchApiService(dio: dio);
  },
);
