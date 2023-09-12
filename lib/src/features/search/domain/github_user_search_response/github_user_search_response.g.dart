// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubUserSearchResponse _$$_GithubUserSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GithubUserSearchResponse(
      totalCount: json['total_count'] as int?,
      incompleteResults: json['incomplete_results'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GithubUserSearchResponseToJson(
        _$_GithubUserSearchResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
