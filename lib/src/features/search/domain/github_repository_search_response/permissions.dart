import 'package:freezed_annotation/freezed_annotation.dart';

part 'permissions.freezed.dart';
part 'permissions.g.dart';

@freezed
class Permissions with _$Permissions {
  factory Permissions({
    bool? admin,
    bool? maintain,
    bool? push,
    bool? triage,
    bool? pull,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}
