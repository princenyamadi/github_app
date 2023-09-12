import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'github_user_search_response.freezed.dart';
part 'github_user_search_response.g.dart';

@freezed
class GithubUserSearchResponse with _$GithubUserSearchResponse {
  factory GithubUserSearchResponse({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'incomplete_results') bool? incompleteResults,
    List<Item>? items,
  }) = _GithubUserSearchResponse;

  factory GithubUserSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GithubUserSearchResponseFromJson(json);
}
