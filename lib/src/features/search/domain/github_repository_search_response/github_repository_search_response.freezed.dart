// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepositorySearchResponse _$GithubRepositorySearchResponseFromJson(
    Map<String, dynamic> json) {
  return _GithubRepositorySearchResponse.fromJson(json);
}

/// @nodoc
mixin _$GithubRepositorySearchResponse {
  @JsonKey(name: 'total_count')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool? get incompleteResults => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepositorySearchResponseCopyWith<GithubRepositorySearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositorySearchResponseCopyWith<$Res> {
  factory $GithubRepositorySearchResponseCopyWith(
          GithubRepositorySearchResponse value,
          $Res Function(GithubRepositorySearchResponse) then) =
      _$GithubRepositorySearchResponseCopyWithImpl<$Res,
          GithubRepositorySearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'incomplete_results') bool? incompleteResults,
      List<Item>? items});
}

/// @nodoc
class _$GithubRepositorySearchResponseCopyWithImpl<$Res,
        $Val extends GithubRepositorySearchResponse>
    implements $GithubRepositorySearchResponseCopyWith<$Res> {
  _$GithubRepositorySearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubRepositorySearchResponseCopyWith<$Res>
    implements $GithubRepositorySearchResponseCopyWith<$Res> {
  factory _$$_GithubRepositorySearchResponseCopyWith(
          _$_GithubRepositorySearchResponse value,
          $Res Function(_$_GithubRepositorySearchResponse) then) =
      __$$_GithubRepositorySearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'incomplete_results') bool? incompleteResults,
      List<Item>? items});
}

/// @nodoc
class __$$_GithubRepositorySearchResponseCopyWithImpl<$Res>
    extends _$GithubRepositorySearchResponseCopyWithImpl<$Res,
        _$_GithubRepositorySearchResponse>
    implements _$$_GithubRepositorySearchResponseCopyWith<$Res> {
  __$$_GithubRepositorySearchResponseCopyWithImpl(
      _$_GithubRepositorySearchResponse _value,
      $Res Function(_$_GithubRepositorySearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_GithubRepositorySearchResponse(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepositorySearchResponse
    implements _GithubRepositorySearchResponse {
  _$_GithubRepositorySearchResponse(
      {@JsonKey(name: 'total_count') this.totalCount,
      @JsonKey(name: 'incomplete_results') this.incompleteResults,
      final List<Item>? items})
      : _items = items;

  factory _$_GithubRepositorySearchResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GithubRepositorySearchResponseFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int? totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool? incompleteResults;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GithubRepositorySearchResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepositorySearchResponse &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRepositorySearchResponseCopyWith<_$_GithubRepositorySearchResponse>
      get copyWith => __$$_GithubRepositorySearchResponseCopyWithImpl<
          _$_GithubRepositorySearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepositorySearchResponseToJson(
      this,
    );
  }
}

abstract class _GithubRepositorySearchResponse
    implements GithubRepositorySearchResponse {
  factory _GithubRepositorySearchResponse(
      {@JsonKey(name: 'total_count') final int? totalCount,
      @JsonKey(name: 'incomplete_results') final bool? incompleteResults,
      final List<Item>? items}) = _$_GithubRepositorySearchResponse;

  factory _GithubRepositorySearchResponse.fromJson(Map<String, dynamic> json) =
      _$_GithubRepositorySearchResponse.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int? get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool? get incompleteResults;
  @override
  List<Item>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepositorySearchResponseCopyWith<_$_GithubRepositorySearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}
