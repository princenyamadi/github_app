import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'github_repository_search_response.freezed.dart';
part 'github_repository_search_response.g.dart';

@freezed
class GithubRepositorySearchResponse with _$GithubRepositorySearchResponse {
  factory GithubRepositorySearchResponse({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'incomplete_results') bool? incompleteResults,
    List<Item>? items,
  }) = _GithubRepositorySearchResponse;

  factory GithubRepositorySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GithubRepositorySearchResponseFromJson(json);
}
