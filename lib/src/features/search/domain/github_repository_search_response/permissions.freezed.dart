// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  bool? get admin => throw _privateConstructorUsedError;
  bool? get maintain => throw _privateConstructorUsedError;
  bool? get push => throw _privateConstructorUsedError;
  bool? get triage => throw _privateConstructorUsedError;
  bool? get pull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call(
      {bool? admin, bool? maintain, bool? push, bool? triage, bool? pull});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = freezed,
    Object? maintain = freezed,
    Object? push = freezed,
    Object? triage = freezed,
    Object? pull = freezed,
  }) {
    return _then(_value.copyWith(
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintain: freezed == maintain
          ? _value.maintain
          : maintain // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool?,
      triage: freezed == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as bool?,
      pull: freezed == pull
          ? _value.pull
          : pull // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionsCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$_PermissionsCopyWith(
          _$_Permissions value, $Res Function(_$_Permissions) then) =
      __$$_PermissionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? admin, bool? maintain, bool? push, bool? triage, bool? pull});
}

/// @nodoc
class __$$_PermissionsCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$_Permissions>
    implements _$$_PermissionsCopyWith<$Res> {
  __$$_PermissionsCopyWithImpl(
      _$_Permissions _value, $Res Function(_$_Permissions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = freezed,
    Object? maintain = freezed,
    Object? push = freezed,
    Object? triage = freezed,
    Object? pull = freezed,
  }) {
    return _then(_$_Permissions(
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintain: freezed == maintain
          ? _value.maintain
          : maintain // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool?,
      triage: freezed == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as bool?,
      pull: freezed == pull
          ? _value.pull
          : pull // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permissions implements _Permissions {
  _$_Permissions(
      {this.admin, this.maintain, this.push, this.triage, this.pull});

  factory _$_Permissions.fromJson(Map<String, dynamic> json) =>
      _$$_PermissionsFromJson(json);

  @override
  final bool? admin;
  @override
  final bool? maintain;
  @override
  final bool? push;
  @override
  final bool? triage;
  @override
  final bool? pull;

  @override
  String toString() {
    return 'Permissions(admin: $admin, maintain: $maintain, push: $push, triage: $triage, pull: $pull)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permissions &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.maintain, maintain) ||
                other.maintain == maintain) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.triage, triage) || other.triage == triage) &&
            (identical(other.pull, pull) || other.pull == pull));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, admin, maintain, push, triage, pull);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      __$$_PermissionsCopyWithImpl<_$_Permissions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermissionsToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  factory _Permissions(
      {final bool? admin,
      final bool? maintain,
      final bool? push,
      final bool? triage,
      final bool? pull}) = _$_Permissions;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$_Permissions.fromJson;

  @override
  bool? get admin;
  @override
  bool? get maintain;
  @override
  bool? get push;
  @override
  bool? get triage;
  @override
  bool? get pull;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}
