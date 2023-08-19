// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pupil_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PupilBase _$$_PupilBaseFromJson(Map<String, dynamic> json) => _$_PupilBase(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      schoolyear: json['schoolyear'] as String,
      group: json['group'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$$_PupilBaseToJson(_$_PupilBase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'schoolyear': instance.schoolyear,
      'group': instance.group,
      'language': instance.language,
    };

_$_PupilBaseList _$$_PupilBaseListFromJson(Map<String, dynamic> json) =>
    _$_PupilBaseList(
      pupilBaseList: (json['pupilBaseList'] as List<dynamic>)
          .map((e) => PupilBase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PupilBaseListToJson(_$_PupilBaseList instance) =>
    <String, dynamic>{
      'pupilBaseList': instance.pupilBaseList,
    };
