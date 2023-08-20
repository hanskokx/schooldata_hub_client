import 'package:freezed_annotation/freezed_annotation.dart';

part 'pupil.freezed.dart';
part 'pupil.g.dart';

@freezed
class PupilWorkbook with _$PupilWorkbook {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PupilWorkbook({
    required DateTime createdAt,
    required String createdBy,
    required String state,
    required int workbookIsbn,
  }) = _PupilWorkbook;
  factory PupilWorkbook.fromJson(Map<String, dynamic> json) =>
      _$PupilWorkbookFromJson(json);
}

@freezed
class MissedClass with _$MissedClass {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MissedClass({
    bool? contacted,
    required String createdBy,
    required DateTime missedDay,
    required int missedPupilId,
    String? modifiedBy,
    bool? returned,
    String? returnedAt,
    bool? writtenExcuse,
  }) = _MissedClass;
  factory MissedClass.fromJson(Map<String, dynamic> json) =>
      _$MissedClassFromJson(json);
}

@freezed
class PupilList with _$PupilList {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PupilList({
    required String originList,
    String? pupilListComment,
    String? pupilListEntryBy,
    bool? pupilListStatus,
  }) = _PupilList;
  factory PupilList.fromJson(Map<String, dynamic> json) =>
      _$PupilListFromJson(json);
}

@freezed
class Admonition with _$Admonition {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Admonition({
    required DateTime admonishedDay,
    required int adminishedPupilId,
    required String admonitionReason,
    required String admonitionType,
  }) = _Admonition;
  factory Admonition.fromJson(Map<String, dynamic> json) =>
      _$AdmonitionFromJson(json);
}

@freezed
class Authorization with _$Authorization {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Authorization({
    required String createdBy,
    required String description,
    required int id,
    required int pupilId,
    bool? status,
  }) = _Authorization;
  factory Authorization.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationFromJson(json);
}

@freezed
class Pupil with _$Pupil {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Pupil({
    @Default(null) String? fistName,
    @Default(null) String? lastName,
    @Default(null) String? schoolyear,
    @Default(null) String? group,
    @Default(null) String? language,
    String? avatarUrl,
    String? communicationPupil,
    String? communicationTutor1,
    String? communicationTutor2,
    int? credit,
    String? fiveYears,
    int? individualDevelopmentPlan,
    required int internalId,
    DateTime? migrationSupportEnds,
    DateTime? migrationFollowSupportEnds,
    required bool ogs,
    int? preschoolRevision,
    String? specialInformation,
    String? specialNeeds,
    required int id,
    required int pupilId,
    bool? status,
    Admonition? admonition,
    MissedClass? missedClass,
    Authorization? authorization,
    PupilList? pupilList,
    PupilWorkbook? pupilWorkbook,
  }) = _Pupil;
  factory Pupil.fromJson(Map<String, dynamic> json) => _$PupilFromJson(json);
}
