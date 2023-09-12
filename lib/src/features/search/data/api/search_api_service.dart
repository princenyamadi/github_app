import 'package:dio/dio.dart';
import 'package:github_app/src/env/env.dart';

const _baseUrl = 'https://api.github.com';

class SearchApiService {
  // api client
  static final _dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
        'Authorization': 'Bearer ${Env.githubToken}'
      },
    ),
  );
  static final _dio2 = Dio(
    BaseOptions(
      headers: {
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
        'Authorization': 'Bearer ${Env.githubToken}'
      },
    ),
  );

  /// search user
  static Future<Response> searchUsers(String query) async {
    try {
      final response = await _dio.get('/search/users?q=$query');
      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  ///search repositories
  static Future<Response> searchRepositories(String query) async {
    try {
      final response = await _dio.get('/search/repositories?q=$query');
      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  ///search repositories
  static Future<Response> getUser(String username) async {
    try {
      final response = await _dio.get('/users/$username');

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  ///get users repositories
  static Future<Response> getUsersRepos(String username) async {
    try {
      // https://api.github.com/users/USERNAME/repos
      final response = await _dio.get('/users/$username/repos');

      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }

  // ///get users repositories
  // static Future<Response> getRepositoriesLanguages(
  //     url) async {
  //   try {
  //     // https://api.github.com/users/USERNAME/repos
  //     final response = await _dio.get('/repos/$username/$repository/languages');
  //     log('------\n\n $response\n\n', name: 'getRepositoriesLanguages');
  //     return response;
  //   } catch (e) {
  //     log('-----------------------\n\nresponse error: ${e.toString()}',
  //         name: 'getRepositoriesLanguages', error: e);
  //     final dioError = e as DioError;
  //     return dioError.response!;
  //   }
  // }

  static Future<Response> getDataFromURL(String url) async {
    try {
      // https://api.github.com/users/USERNAME/repos
      final response = await _dio2.get(url);
      return response;
    } catch (e) {
      final dioError = e as DioError;
      return dioError.response!;
    }
  }
}
