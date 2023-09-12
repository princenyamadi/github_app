// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_user_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubUserSearchResponse _$GithubUserSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _GithubUserSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$GithubUserSearchResponse {
  @JsonKey(name: 'total_count')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool? get incompleteResults => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubUserSearchResponseCopyWith<GithubUserSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubUserSearchResponseCopyWith<$Res> {
  factory $GithubUserSearchResponseCopyWith(GithubUserSearchResponse value,
          $Res Function(GithubUserSearchResponse) then) =
      _$GithubUserSearchResponseCopyWithImpl<$Res, GithubUserSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'incomplete_results') bool? incompleteResults,
      List<Item>? items});
}

/// @nodoc
class _$GithubUserSearchResponseCopyWithImpl<$Res,
        $Val extends GithubUserSearchResponse>
    implements $GithubUserSearchResponseCopyWith<$Res> {
  _$GithubUserSearchResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_GithubUserSearchResponseCopyWith<$Res>
    implements $GithubUserSearchResponseCopyWith<$Res> {
  factory _$$_GithubUserSearchResponseCopyWith(
          _$_GithubUserSearchResponse value,
          $Res Function(_$_GithubUserSearchResponse) then) =
      __$$_GithubUserSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'incomplete_results') bool? incompleteResults,
      List<Item>? items});
}

/// @nodoc
class __$$_GithubUserSearchResponseCopyWithImpl<$Res>
    extends _$GithubUserSearchResponseCopyWithImpl<$Res,
        _$_GithubUserSearchResponse>
    implements _$$_GithubUserSearchResponseCopyWith<$Res> {
  __$$_GithubUserSearchResponseCopyWithImpl(_$_GithubUserSearchResponse _value,
      $Res Function(_$_GithubUserSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_GithubUserSearchResponse(
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
class _$_GithubUserSearchResponse implements _GithubUserSearchResponse {
  _$_GithubUserSearchResponse(
      {@JsonKey(name: 'total_count') this.totalCount,
      @JsonKey(name: 'incomplete_results') this.incompleteResults,
      final List<Item>? items})
      : _items = items;

  factory _$_GithubUserSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GithubUserSearchResponseFromJson(json);

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
    return 'GithubUserSearchResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubUserSearchResponse &&
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
  _$$_GithubUserSearchResponseCopyWith<_$_GithubUserSearchResponse>
      get copyWith => __$$_GithubUserSearchResponseCopyWithImpl<
          _$_GithubUserSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubUserSearchResponseToJson(
      this,
    );
  }
}

abstract class _GithubUserSearchResponse implements GithubUserSearchResponse {
  factory _GithubUserSearchResponse(
      {@JsonKey(name: 'total_count') final int? totalCount,
      @JsonKey(name: 'incomplete_results') final bool? incompleteResults,
      final List<Item>? items}) = _$_GithubUserSearchResponse;

  factory _GithubUserSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_GithubUserSearchResponse.fromJson;

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
  _$$_GithubUserSearchResponseCopyWith<_$_GithubUserSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}
