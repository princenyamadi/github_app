import 'package:dartz/dartz.dart';
import 'package:github_app/src/features/search/data/remote/remote_github_search_repository_impl.dart';

import 'package:github_app/src/features/search/domain/repository_response/repository_response.dart';
import 'package:github_app/src/features/search/domain/user_response/user_response.dart';
import 'package:github_app/src/utils/network/network_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../utils/failure/failure.dart';
import '../../domain/github_repository_search_response/github_repository_search_response.dart';
import '../../domain/github_user_search_response/github_user_search_response.dart';

part 'remote_github_search_repository.g.dart';

abstract class RemoteGithubSearchRepository {
  /// handles user search queries
  Future<Either<Failure, GithubUserSearchResponse>> searchUsers(String query);

  /// handles repository search queries
  Future<Either<Failure, GithubRepositorySearchResponse>> searchRepositories(
      String query);

  /// handles user  retrieval
  Future<Either<Failure, UserResponse>> getUser(String username);

  /// handles user's repositories
  Future<Either<Failure, List<RepositoryResponse>>> getUsersRepos(
      String username);

  Future<Map<String, dynamic>> getRepositoriesLanguages(String url);
}

@Riverpod(keepAlive: true)
RemoteGithubSearchRepository remoteGithubSearchRepository(
    RemoteGithubSearchRepositoryRef ref) {
  final networkInfo = ref.read(networkInfoProvider);

  return RemoteGithubSearchRepositoryImpl(networkInfo: networkInfo);
}
