import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  factory UserResponse({
    String? login,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'gravatar_id') String? gravatarId,
    String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'followers_url') String? followersUrl,
    @JsonKey(name: 'following_url') String? followingUrl,
    @JsonKey(name: 'gists_url') String? gistsUrl,
    @JsonKey(name: 'starred_url') String? starredUrl,
    @JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') String? organizationsUrl,
    @JsonKey(name: 'repos_url') String? reposUrl,
    @JsonKey(name: 'events_url') String? eventsUrl,
    @JsonKey(name: 'received_events_url') String? receivedEventsUrl,
    String? type,
    @JsonKey(name: 'site_admin') bool? siteAdmin,
    String? name,
    String? company,
    String? blog,
    String? location,
    dynamic email,
    dynamic hireable,
    String? bio,
    @JsonKey(name: 'twitter_username') String? twitterUsername,
    @JsonKey(name: 'public_repos') int? publicRepos,
    @JsonKey(name: 'public_gists') int? publicGists,
    int? followers,
    int? following,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
