// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Permissions _$$_PermissionsFromJson(Map<String, dynamic> json) =>
    _$_Permissions(
      admin: json['admin'] as bool?,
      maintain: json['maintain'] as bool?,
      push: json['push'] as bool?,
      triage: json['triage'] as bool?,
      pull: json['pull'] as bool?,
    );

Map<String, dynamic> _$$_PermissionsToJson(_$_Permissions instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'maintain': instance.maintain,
      'push': instance.push,
      'triage': instance.triage,
      'pull': instance.pull,
    };
