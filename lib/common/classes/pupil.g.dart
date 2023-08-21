// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pupil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PupilWorkbook _$$_PupilWorkbookFromJson(Map<String, dynamic> json) =>
    _$_PupilWorkbook(
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] as String,
      state: json['state'] as String,
      workbookIsbn: json['workbook_isbn'] as int,
    );

Map<String, dynamic> _$$_PupilWorkbookToJson(_$_PupilWorkbook instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'state': instance.state,
      'workbook_isbn': instance.workbookIsbn,
    };

_$_MissedClass _$$_MissedClassFromJson(Map<String, dynamic> json) =>
    _$_MissedClass(
      contacted: json['contacted'] as bool?,
      createdBy: json['created_by'] as String,
      missedDay: DateTime.parse(json['missed_day'] as String),
      missedPupilId: json['missed_pupil_id'] as int,
      modifiedBy: json['modified_by'] as String?,
      returned: json['returned'] as bool?,
      returnedAt: json['returned_at'] as String?,
      writtenExcuse: json['written_excuse'] as bool?,
    );

Map<String, dynamic> _$$_MissedClassToJson(_$_MissedClass instance) =>
    <String, dynamic>{
      'contacted': instance.contacted,
      'created_by': instance.createdBy,
      'missed_day': instance.missedDay.toIso8601String(),
      'missed_pupil_id': instance.missedPupilId,
      'modified_by': instance.modifiedBy,
      'returned': instance.returned,
      'returned_at': instance.returnedAt,
      'written_excuse': instance.writtenExcuse,
    };

_$_PupilList _$$_PupilListFromJson(Map<String, dynamic> json) => _$_PupilList(
      originList: json['origin_list'] as String,
      pupilListComment: json['pupil_list_comment'] as String?,
      pupilListEntryBy: json['pupil_list_entry_by'] as String?,
      pupilListStatus: json['pupil_list_status'] as bool?,
    );

Map<String, dynamic> _$$_PupilListToJson(_$_PupilList instance) =>
    <String, dynamic>{
      'origin_list': instance.originList,
      'pupil_list_comment': instance.pupilListComment,
      'pupil_list_entry_by': instance.pupilListEntryBy,
      'pupil_list_status': instance.pupilListStatus,
    };

_$_Admonition _$$_AdmonitionFromJson(Map<String, dynamic> json) =>
    _$_Admonition(
      admonishedDay: DateTime.parse(json['admonished_day'] as String),
      adminishedPupilId: json['adminished_pupil_id'] as int,
      admonitionReason: json['admonition_reason'] as String,
      admonitionType: json['admonition_type'] as String,
    );

Map<String, dynamic> _$$_AdmonitionToJson(_$_Admonition instance) =>
    <String, dynamic>{
      'admonished_day': instance.admonishedDay.toIso8601String(),
      'adminished_pupil_id': instance.adminishedPupilId,
      'admonition_reason': instance.admonitionReason,
      'admonition_type': instance.admonitionType,
    };

_$_Authorization _$$_AuthorizationFromJson(Map<String, dynamic> json) =>
    _$_Authorization(
      createdBy: json['created_by'] as String,
      description: json['description'] as String,
      id: json['id'] as int,
      pupilId: json['pupil_id'] as int,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$_AuthorizationToJson(_$_Authorization instance) =>
    <String, dynamic>{
      'created_by': instance.createdBy,
      'description': instance.description,
      'id': instance.id,
      'pupil_id': instance.pupilId,
      'status': instance.status,
    };

_$_Pupil _$$_PupilFromJson(Map<String, dynamic> json) => _$_Pupil(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      schoolyear: json['schoolyear'] as String?,
      group: json['group'] as String?,
      language: json['language'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      communicationPupil: json['communication_pupil'] as String?,
      communicationTutor1: json['communication_tutor1'] as String?,
      communicationTutor2: json['communication_tutor2'] as String?,
      credit: json['credit'] as int?,
      fiveYears: json['five_years'] as String?,
      individualDevelopmentPlan: json['individual_development_plan'] as int?,
      internalId: json['internal_id'] as int,
      migrationSupportEnds: json['migration_support_ends'] == null
          ? null
          : DateTime.parse(json['migration_support_ends'] as String),
      migrationFollowSupportEnds: json['migration_follow_support_ends'] == null
          ? null
          : DateTime.parse(json['migration_follow_support_ends'] as String),
      ogs: json['ogs'] as bool,
      preschoolRevision: json['preschool_revision'] as int?,
      specialInformation: json['special_information'] as String?,
      specialNeeds: json['special_needs'] as String?,
      id: json['id'] as int,
      pupilId: json['pupil_id'] as int,
      status: json['status'] as bool?,
      admonition: json['admonition'] == null
          ? null
          : Admonition.fromJson(json['admonition'] as Map<String, dynamic>),
      missedClass: json['missed_class'] == null
          ? null
          : MissedClass.fromJson(json['missed_class'] as Map<String, dynamic>),
      authorization: json['authorization'] == null
          ? null
          : Authorization.fromJson(
              json['authorization'] as Map<String, dynamic>),
      pupilList: json['pupil_list'] == null
          ? null
          : PupilList.fromJson(json['pupil_list'] as Map<String, dynamic>),
      pupilWorkbook: json['pupil_workbook'] == null
          ? null
          : PupilWorkbook.fromJson(
              json['pupil_workbook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PupilToJson(_$_Pupil instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'schoolyear': instance.schoolyear,
      'group': instance.group,
      'language': instance.language,
      'avatar_url': instance.avatarUrl,
      'communication_pupil': instance.communicationPupil,
      'communication_tutor1': instance.communicationTutor1,
      'communication_tutor2': instance.communicationTutor2,
      'credit': instance.credit,
      'five_years': instance.fiveYears,
      'individual_development_plan': instance.individualDevelopmentPlan,
      'internal_id': instance.internalId,
      'migration_support_ends':
          instance.migrationSupportEnds?.toIso8601String(),
      'migration_follow_support_ends':
          instance.migrationFollowSupportEnds?.toIso8601String(),
      'ogs': instance.ogs,
      'preschool_revision': instance.preschoolRevision,
      'special_information': instance.specialInformation,
      'special_needs': instance.specialNeeds,
      'id': instance.id,
      'pupil_id': instance.pupilId,
      'status': instance.status,
      'admonition': instance.admonition,
      'missed_class': instance.missedClass,
      'authorization': instance.authorization,
      'pupil_list': instance.pupilList,
      'pupil_workbook': instance.pupilWorkbook,
    };
