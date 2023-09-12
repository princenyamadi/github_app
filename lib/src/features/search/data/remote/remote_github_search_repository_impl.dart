import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_app/src/features/search/data/api/search_api_service.dart';
import 'package:github_app/src/features/search/data/remote/remote_github_search_repository.dart';

import 'package:github_app/src/features/search/domain/repository_response/repository_response.dart';
import 'package:github_app/src/features/search/domain/user_response/user_response.dart';

import 'package:github_app/src/utils/extensions/response_extension.dart';
import 'package:github_app/src/utils/failure/failure.dart';

import '../../../../utils/network/network_info.dart';
import '../../domain/github_repository_search_response/github_repository_search_response.dart';
import '../../domain/github_user_search_response/github_user_search_response.dart';

class RemoteGithubSearchRepositoryImpl implements RemoteGithubSearchRepository {
  final NetworkInfo networkInfo;

  RemoteGithubSearchRepositoryImpl({required this.networkInfo});

  Future<Either<Failure, Response>> execute(Future<Response> asyncCall) async {
    // * check for internet connectivity
    if (!await networkInfo.hasConnection) {
      return const Left(Failure.network(message: 'No internet connection.'));
    }
    // *

    try {
      final response = await asyncCall;
      if (response.isSuccessful) return Right(response);

      final statusCode =
          response.statusCode != null ? response.statusCode.toString() : "";
      final statusMessage = response.statusMessage ?? "";

      return Left(
        Failure.server(
          status: statusCode,
          message: statusMessage,
        ),
      );
    } catch (e) {
      // *
      return const Left(
          Failure.exception(message: "Oooops, Something went wrong."));
    }
  }

  @override
  Future<Either<Failure, GithubRepositorySearchResponse>> searchRepositories(
      String query) async {
    try {
      final result = await execute(SearchApiService.searchRepositories(query));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final right = GithubRepositorySearchResponse.fromJson(response.data);
          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving search results'));
    }
  }

  @override
  Future<Either<Failure, GithubUserSearchResponse>> searchUsers(
      String query) async {
    try {
      final result = await execute(SearchApiService.searchUsers(query));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final right = GithubUserSearchResponse.fromJson(response.data);
          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving search results'));
    }
  }

  @override
  Future<Either<Failure, UserResponse>> getUser(String username) async {
    try {
      final result = await execute(SearchApiService.getUser(username));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final right = UserResponse.fromJson(response.data);
          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving search results'));
    }
  }

  @override
  Future<Either<Failure, List<RepositoryResponse>>> getUsersRepos(
      String username) async {
    try {
      final result = await execute(SearchApiService.getUsersRepos(username));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final list = response.data as List;

          final right = list.map(
            (event) {
              return RepositoryResponse.fromJson(event);
            },
          ).toList();

          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving search results'));
    }
  }

  @override
  Future<Map<String, dynamic>> getRepositoriesLanguages(String url) async {
    try {
      final result = await execute(SearchApiService.getDataFromURL(url));

      return result.fold(
        (failure) {
          return {};
        },
        (response) async {
          final right = response.data as Map<String, dynamic>;

          return right;
        },
      );
    } catch (e) {
      return {};
    }
  }
}
// getUsersRepos