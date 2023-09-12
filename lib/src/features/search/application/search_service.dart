import 'package:dartz/dartz.dart';
import 'package:github_app/src/features/search/data/remote/remote_github_search_repository.dart';

import 'package:github_app/src/features/search/domain/repository_response/repository_response.dart';
import 'package:github_app/src/features/search/domain/user_response/user_response.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../utils/failure/failure.dart';
import '../domain/github_repository_search_response/github_repository_search_response.dart';
import '../domain/github_user_search_response/github_user_search_response.dart';

part 'search_service.g.dart';

@Riverpod(keepAlive: true)
Future<Either<Failure, GithubRepositorySearchResponse>> repositorySearch(
    RepositorySearchRef ref, String query) {
  final remoteRepo = ref.watch(remoteGithubSearchRepositoryProvider);

  return remoteRepo.searchRepositories(query);
}

@Riverpod(keepAlive: true)
Future<Either<Failure, GithubUserSearchResponse>> userSearch(
    UserSearchRef ref, String query) {
  final remoteRepo = ref.watch(remoteGithubSearchRepositoryProvider);

  return remoteRepo.searchUsers(query);
}

@Riverpod(keepAlive: true)
Future<Either<Failure, UserResponse>> githubUser(
    GithubUserRef ref, String username) {
  final remoteRepo = ref.watch(remoteGithubSearchRepositoryProvider);

  return remoteRepo.getUser(username);
}

@Riverpod(keepAlive: true)
Future<Either<Failure, List<RepositoryResponse>>> userRepositories(
    UserRepositoriesRef ref, String username) {
  final remoteRepo = ref.watch(remoteGithubSearchRepositoryProvider);

  return remoteRepo.getUsersRepos(username);
}

@Riverpod(keepAlive: true)
Future<Map<String, dynamic>> repositoryLanguages(
    RepositoryLanguagesRef ref, String url) {
  final remoteRepo = ref.watch(remoteGithubSearchRepositoryProvider);

  return remoteRepo.getRepositoriesLanguages(url);
}


// getRepositoriesLanguages