// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pupil.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PupilWorkbook _$PupilWorkbookFromJson(Map<String, dynamic> json) {
  return _PupilWorkbook.fromJson(json);
}

/// @nodoc
mixin _$PupilWorkbook {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  int get workbookIsbn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PupilWorkbookCopyWith<PupilWorkbook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PupilWorkbookCopyWith<$Res> {
  factory $PupilWorkbookCopyWith(
          PupilWorkbook value, $Res Function(PupilWorkbook) then) =
      _$PupilWorkbookCopyWithImpl<$Res, PupilWorkbook>;
  @useResult
  $Res call(
      {DateTime createdAt, String createdBy, String state, int workbookIsbn});
}

/// @nodoc
class _$PupilWorkbookCopyWithImpl<$Res, $Val extends PupilWorkbook>
    implements $PupilWorkbookCopyWith<$Res> {
  _$PupilWorkbookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? createdBy = null,
    Object? state = null,
    Object? workbookIsbn = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      workbookIsbn: null == workbookIsbn
          ? _value.workbookIsbn
          : workbookIsbn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PupilWorkbookCopyWith<$Res>
    implements $PupilWorkbookCopyWith<$Res> {
  factory _$$_PupilWorkbookCopyWith(
          _$_PupilWorkbook value, $Res Function(_$_PupilWorkbook) then) =
      __$$_PupilWorkbookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt, String createdBy, String state, int workbookIsbn});
}

/// @nodoc
class __$$_PupilWorkbookCopyWithImpl<$Res>
    extends _$PupilWorkbookCopyWithImpl<$Res, _$_PupilWorkbook>
    implements _$$_PupilWorkbookCopyWith<$Res> {
  __$$_PupilWorkbookCopyWithImpl(
      _$_PupilWorkbook _value, $Res Function(_$_PupilWorkbook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? createdBy = null,
    Object? state = null,
    Object? workbookIsbn = null,
  }) {
    return _then(_$_PupilWorkbook(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      workbookIsbn: null == workbookIsbn
          ? _value.workbookIsbn
          : workbookIsbn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PupilWorkbook implements _PupilWorkbook {
  const _$_PupilWorkbook(
      {required this.createdAt,
      required this.createdBy,
      required this.state,
      required this.workbookIsbn});

  factory _$_PupilWorkbook.fromJson(Map<String, dynamic> json) =>
      _$$_PupilWorkbookFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String createdBy;
  @override
  final String state;
  @override
  final int workbookIsbn;

  @override
  String toString() {
    return 'PupilWorkbook(createdAt: $createdAt, createdBy: $createdBy, state: $state, workbookIsbn: $workbookIsbn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PupilWorkbook &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.workbookIsbn, workbookIsbn) ||
                other.workbookIsbn == workbookIsbn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, createdBy, state, workbookIsbn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PupilWorkbookCopyWith<_$_PupilWorkbook> get copyWith =>
      __$$_PupilWorkbookCopyWithImpl<_$_PupilWorkbook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PupilWorkbookToJson(
      this,
    );
  }
}

abstract class _PupilWorkbook implements PupilWorkbook {
  const factory _PupilWorkbook(
      {required final DateTime createdAt,
      required final String createdBy,
      required final String state,
      required final int workbookIsbn}) = _$_PupilWorkbook;

  factory _PupilWorkbook.fromJson(Map<String, dynamic> json) =
      _$_PupilWorkbook.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get createdBy;
  @override
  String get state;
  @override
  int get workbookIsbn;
  @override
  @JsonKey(ignore: true)
  _$$_PupilWorkbookCopyWith<_$_PupilWorkbook> get copyWith =>
      throw _privateConstructorUsedError;
}

MissedClass _$MissedClassFromJson(Map<String, dynamic> json) {
  return _MissedClass.fromJson(json);
}

/// @nodoc
mixin _$MissedClass {
  bool? get contacted => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get missedDay => throw _privateConstructorUsedError;
  int get missedPupilId => throw _privateConstructorUsedError;
  String? get modifiedBy => throw _privateConstructorUsedError;
  bool? get returned => throw _privateConstructorUsedError;
  String? get returnedAt => throw _privateConstructorUsedError;
  bool? get writtenExcuse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissedClassCopyWith<MissedClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissedClassCopyWith<$Res> {
  factory $MissedClassCopyWith(
          MissedClass value, $Res Function(MissedClass) then) =
      _$MissedClassCopyWithImpl<$Res, MissedClass>;
  @useResult
  $Res call(
      {bool? contacted,
      String createdBy,
      DateTime missedDay,
      int missedPupilId,
      String? modifiedBy,
      bool? returned,
      String? returnedAt,
      bool? writtenExcuse});
}

/// @nodoc
class _$MissedClassCopyWithImpl<$Res, $Val extends MissedClass>
    implements $MissedClassCopyWith<$Res> {
  _$MissedClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacted = freezed,
    Object? createdBy = null,
    Object? missedDay = null,
    Object? missedPupilId = null,
    Object? modifiedBy = freezed,
    Object? returned = freezed,
    Object? returnedAt = freezed,
    Object? writtenExcuse = freezed,
  }) {
    return _then(_value.copyWith(
      contacted: freezed == contacted
          ? _value.contacted
          : contacted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      missedDay: null == missedDay
          ? _value.missedDay
          : missedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      missedPupilId: null == missedPupilId
          ? _value.missedPupilId
          : missedPupilId // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as bool?,
      returnedAt: freezed == returnedAt
          ? _value.returnedAt
          : returnedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      writtenExcuse: freezed == writtenExcuse
          ? _value.writtenExcuse
          : writtenExcuse // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MissedClassCopyWith<$Res>
    implements $MissedClassCopyWith<$Res> {
  factory _$$_MissedClassCopyWith(
          _$_MissedClass value, $Res Function(_$_MissedClass) then) =
      __$$_MissedClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? contacted,
      String createdBy,
      DateTime missedDay,
      int missedPupilId,
      String? modifiedBy,
      bool? returned,
      String? returnedAt,
      bool? writtenExcuse});
}

/// @nodoc
class __$$_MissedClassCopyWithImpl<$Res>
    extends _$MissedClassCopyWithImpl<$Res, _$_MissedClass>
    implements _$$_MissedClassCopyWith<$Res> {
  __$$_MissedClassCopyWithImpl(
      _$_MissedClass _value, $Res Function(_$_MissedClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacted = freezed,
    Object? createdBy = null,
    Object? missedDay = null,
    Object? missedPupilId = null,
    Object? modifiedBy = freezed,
    Object? returned = freezed,
    Object? returnedAt = freezed,
    Object? writtenExcuse = freezed,
  }) {
    return _then(_$_MissedClass(
      contacted: freezed == contacted
          ? _value.contacted
          : contacted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      missedDay: null == missedDay
          ? _value.missedDay
          : missedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      missedPupilId: null == missedPupilId
          ? _value.missedPupilId
          : missedPupilId // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as bool?,
      returnedAt: freezed == returnedAt
          ? _value.returnedAt
          : returnedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      writtenExcuse: freezed == writtenExcuse
          ? _value.writtenExcuse
          : writtenExcuse // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MissedClass implements _MissedClass {
  const _$_MissedClass(
      {this.contacted,
      required this.createdBy,
      required this.missedDay,
      required this.missedPupilId,
      this.modifiedBy,
      this.returned,
      this.returnedAt,
      this.writtenExcuse});

  factory _$_MissedClass.fromJson(Map<String, dynamic> json) =>
      _$$_MissedClassFromJson(json);

  @override
  final bool? contacted;
  @override
  final String createdBy;
  @override
  final DateTime missedDay;
  @override
  final int missedPupilId;
  @override
  final String? modifiedBy;
  @override
  final bool? returned;
  @override
  final String? returnedAt;
  @override
  final bool? writtenExcuse;

  @override
  String toString() {
    return 'MissedClass(contacted: $contacted, createdBy: $createdBy, missedDay: $missedDay, missedPupilId: $missedPupilId, modifiedBy: $modifiedBy, returned: $returned, returnedAt: $returnedAt, writtenExcuse: $writtenExcuse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MissedClass &&
            (identical(other.contacted, contacted) ||
                other.contacted == contacted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.missedDay, missedDay) ||
                other.missedDay == missedDay) &&
            (identical(other.missedPupilId, missedPupilId) ||
                other.missedPupilId == missedPupilId) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.returned, returned) ||
                other.returned == returned) &&
            (identical(other.returnedAt, returnedAt) ||
                other.returnedAt == returnedAt) &&
            (identical(other.writtenExcuse, writtenExcuse) ||
                other.writtenExcuse == writtenExcuse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contacted, createdBy, missedDay,
      missedPupilId, modifiedBy, returned, returnedAt, writtenExcuse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MissedClassCopyWith<_$_MissedClass> get copyWith =>
      __$$_MissedClassCopyWithImpl<_$_MissedClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MissedClassToJson(
      this,
    );
  }
}

abstract class _MissedClass implements MissedClass {
  const factory _MissedClass(
      {final bool? contacted,
      required final String createdBy,
      required final DateTime missedDay,
      required final int missedPupilId,
      final String? modifiedBy,
      final bool? returned,
      final String? returnedAt,
      final bool? writtenExcuse}) = _$_MissedClass;

  factory _MissedClass.fromJson(Map<String, dynamic> json) =
      _$_MissedClass.fromJson;

  @override
  bool? get contacted;
  @override
  String get createdBy;
  @override
  DateTime get missedDay;
  @override
  int get missedPupilId;
  @override
  String? get modifiedBy;
  @override
  bool? get returned;
  @override
  String? get returnedAt;
  @override
  bool? get writtenExcuse;
  @override
  @JsonKey(ignore: true)
  _$$_MissedClassCopyWith<_$_MissedClass> get copyWith =>
      throw _privateConstructorUsedError;
}

PupilList _$PupilListFromJson(Map<String, dynamic> json) {
  return _PupilList.fromJson(json);
}

/// @nodoc
mixin _$PupilList {
  String get originList => throw _privateConstructorUsedError;
  String? get pupilListComment => throw _privateConstructorUsedError;
  String? get pupilListEntryBy => throw _privateConstructorUsedError;
  bool? get pupilListStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PupilListCopyWith<PupilList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PupilListCopyWith<$Res> {
  factory $PupilListCopyWith(PupilList value, $Res Function(PupilList) then) =
      _$PupilListCopyWithImpl<$Res, PupilList>;
  @useResult
  $Res call(
      {String originList,
      String? pupilListComment,
      String? pupilListEntryBy,
      bool? pupilListStatus});
}

/// @nodoc
class _$PupilListCopyWithImpl<$Res, $Val extends PupilList>
    implements $PupilListCopyWith<$Res> {
  _$PupilListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originList = null,
    Object? pupilListComment = freezed,
    Object? pupilListEntryBy = freezed,
    Object? pupilListStatus = freezed,
  }) {
    return _then(_value.copyWith(
      originList: null == originList
          ? _value.originList
          : originList // ignore: cast_nullable_to_non_nullable
              as String,
      pupilListComment: freezed == pupilListComment
          ? _value.pupilListComment
          : pupilListComment // ignore: cast_nullable_to_non_nullable
              as String?,
      pupilListEntryBy: freezed == pupilListEntryBy
          ? _value.pupilListEntryBy
          : pupilListEntryBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pupilListStatus: freezed == pupilListStatus
          ? _value.pupilListStatus
          : pupilListStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PupilListCopyWith<$Res> implements $PupilListCopyWith<$Res> {
  factory _$$_PupilListCopyWith(
          _$_PupilList value, $Res Function(_$_PupilList) then) =
      __$$_PupilListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String originList,
      String? pupilListComment,
      String? pupilListEntryBy,
      bool? pupilListStatus});
}

/// @nodoc
class __$$_PupilListCopyWithImpl<$Res>
    extends _$PupilListCopyWithImpl<$Res, _$_PupilList>
    implements _$$_PupilListCopyWith<$Res> {
  __$$_PupilListCopyWithImpl(
      _$_PupilList _value, $Res Function(_$_PupilList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originList = null,
    Object? pupilListComment = freezed,
    Object? pupilListEntryBy = freezed,
    Object? pupilListStatus = freezed,
  }) {
    return _then(_$_PupilList(
      originList: null == originList
          ? _value.originList
          : originList // ignore: cast_nullable_to_non_nullable
              as String,
      pupilListComment: freezed == pupilListComment
          ? _value.pupilListComment
          : pupilListComment // ignore: cast_nullable_to_non_nullable
              as String?,
      pupilListEntryBy: freezed == pupilListEntryBy
          ? _value.pupilListEntryBy
          : pupilListEntryBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pupilListStatus: freezed == pupilListStatus
          ? _value.pupilListStatus
          : pupilListStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PupilList implements _PupilList {
  const _$_PupilList(
      {required this.originList,
      this.pupilListComment,
      this.pupilListEntryBy,
      this.pupilListStatus});

  factory _$_PupilList.fromJson(Map<String, dynamic> json) =>
      _$$_PupilListFromJson(json);

  @override
  final String originList;
  @override
  final String? pupilListComment;
  @override
  final String? pupilListEntryBy;
  @override
  final bool? pupilListStatus;

  @override
  String toString() {
    return 'PupilList(originList: $originList, pupilListComment: $pupilListComment, pupilListEntryBy: $pupilListEntryBy, pupilListStatus: $pupilListStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PupilList &&
            (identical(other.originList, originList) ||
                other.originList == originList) &&
            (identical(other.pupilListComment, pupilListComment) ||
                other.pupilListComment == pupilListComment) &&
            (identical(other.pupilListEntryBy, pupilListEntryBy) ||
                other.pupilListEntryBy == pupilListEntryBy) &&
            (identical(other.pupilListStatus, pupilListStatus) ||
                other.pupilListStatus == pupilListStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, originList, pupilListComment,
      pupilListEntryBy, pupilListStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PupilListCopyWith<_$_PupilList> get copyWith =>
      __$$_PupilListCopyWithImpl<_$_PupilList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PupilListToJson(
      this,
    );
  }
}

abstract class _PupilList implements PupilList {
  const factory _PupilList(
      {required final String originList,
      final String? pupilListComment,
      final String? pupilListEntryBy,
      final bool? pupilListStatus}) = _$_PupilList;

  factory _PupilList.fromJson(Map<String, dynamic> json) =
      _$_PupilList.fromJson;

  @override
  String get originList;
  @override
  String? get pupilListComment;
  @override
  String? get pupilListEntryBy;
  @override
  bool? get pupilListStatus;
  @override
  @JsonKey(ignore: true)
  _$$_PupilListCopyWith<_$_PupilList> get copyWith =>
      throw _privateConstructorUsedError;
}

Admonition _$AdmonitionFromJson(Map<String, dynamic> json) {
  return _Admonition.fromJson(json);
}

/// @nodoc
mixin _$Admonition {
  DateTime get admonishedDay => throw _privateConstructorUsedError;
  int get adminishedPupilId => throw _privateConstructorUsedError;
  String get admonitionReason => throw _privateConstructorUsedError;
  String get admonitionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdmonitionCopyWith<Admonition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdmonitionCopyWith<$Res> {
  factory $AdmonitionCopyWith(
          Admonition value, $Res Function(Admonition) then) =
      _$AdmonitionCopyWithImpl<$Res, Admonition>;
  @useResult
  $Res call(
      {DateTime admonishedDay,
      int adminishedPupilId,
      String admonitionReason,
      String admonitionType});
}

/// @nodoc
class _$AdmonitionCopyWithImpl<$Res, $Val extends Admonition>
    implements $AdmonitionCopyWith<$Res> {
  _$AdmonitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admonishedDay = null,
    Object? adminishedPupilId = null,
    Object? admonitionReason = null,
    Object? admonitionType = null,
  }) {
    return _then(_value.copyWith(
      admonishedDay: null == admonishedDay
          ? _value.admonishedDay
          : admonishedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adminishedPupilId: null == adminishedPupilId
          ? _value.adminishedPupilId
          : adminishedPupilId // ignore: cast_nullable_to_non_nullable
              as int,
      admonitionReason: null == admonitionReason
          ? _value.admonitionReason
          : admonitionReason // ignore: cast_nullable_to_non_nullable
              as String,
      admonitionType: null == admonitionType
          ? _value.admonitionType
          : admonitionType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdmonitionCopyWith<$Res>
    implements $AdmonitionCopyWith<$Res> {
  factory _$$_AdmonitionCopyWith(
          _$_Admonition value, $Res Function(_$_Admonition) then) =
      __$$_AdmonitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime admonishedDay,
      int adminishedPupilId,
      String admonitionReason,
      String admonitionType});
}

/// @nodoc
class __$$_AdmonitionCopyWithImpl<$Res>
    extends _$AdmonitionCopyWithImpl<$Res, _$_Admonition>
    implements _$$_AdmonitionCopyWith<$Res> {
  __$$_AdmonitionCopyWithImpl(
      _$_Admonition _value, $Res Function(_$_Admonition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admonishedDay = null,
    Object? adminishedPupilId = null,
    Object? admonitionReason = null,
    Object? admonitionType = null,
  }) {
    return _then(_$_Admonition(
      admonishedDay: null == admonishedDay
          ? _value.admonishedDay
          : admonishedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adminishedPupilId: null == adminishedPupilId
          ? _value.adminishedPupilId
          : adminishedPupilId // ignore: cast_nullable_to_non_nullable
              as int,
      admonitionReason: null == admonitionReason
          ? _value.admonitionReason
          : admonitionReason // ignore: cast_nullable_to_non_nullable
              as String,
      admonitionType: null == admonitionType
          ? _value.admonitionType
          : admonitionType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Admonition implements _Admonition {
  const _$_Admonition(
      {required this.admonishedDay,
      required this.adminishedPupilId,
      required this.admonitionReason,
      required this.admonitionType});

  factory _$_Admonition.fromJson(Map<String, dynamic> json) =>
      _$$_AdmonitionFromJson(json);

  @override
  final DateTime admonishedDay;
  @override
  final int adminishedPupilId;
  @override
  final String admonitionReason;
  @override
  final String admonitionType;

  @override
  String toString() {
    return 'Admonition(admonishedDay: $admonishedDay, adminishedPupilId: $adminishedPupilId, admonitionReason: $admonitionReason, admonitionType: $admonitionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Admonition &&
            (identical(other.admonishedDay, admonishedDay) ||
                other.admonishedDay == admonishedDay) &&
            (identical(other.adminishedPupilId, adminishedPupilId) ||
                other.adminishedPupilId == adminishedPupilId) &&
            (identical(other.admonitionReason, admonitionReason) ||
                other.admonitionReason == admonitionReason) &&
            (identical(other.admonitionType, admonitionType) ||
                other.admonitionType == admonitionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, admonishedDay, adminishedPupilId,
      admonitionReason, admonitionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdmonitionCopyWith<_$_Admonition> get copyWith =>
      __$$_AdmonitionCopyWithImpl<_$_Admonition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdmonitionToJson(
      this,
    );
  }
}

abstract class _Admonition implements Admonition {
  const factory _Admonition(
      {required final DateTime admonishedDay,
      required final int adminishedPupilId,
      required final String admonitionReason,
      required final String admonitionType}) = _$_Admonition;

  factory _Admonition.fromJson(Map<String, dynamic> json) =
      _$_Admonition.fromJson;

  @override
  DateTime get admonishedDay;
  @override
  int get adminishedPupilId;
  @override
  String get admonitionReason;
  @override
  String get admonitionType;
  @override
  @JsonKey(ignore: true)
  _$$_AdmonitionCopyWith<_$_Admonition> get copyWith =>
      throw _privateConstructorUsedError;
}

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) {
  return _Authorization.fromJson(json);
}

/// @nodoc
mixin _$Authorization {
  String get createdBy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get pupilId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationCopyWith<Authorization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationCopyWith<$Res> {
  factory $AuthorizationCopyWith(
          Authorization value, $Res Function(Authorization) then) =
      _$AuthorizationCopyWithImpl<$Res, Authorization>;
  @useResult
  $Res call(
      {String createdBy,
      String description,
      int id,
      int pupilId,
      bool? status});
}

/// @nodoc
class _$AuthorizationCopyWithImpl<$Res, $Val extends Authorization>
    implements $AuthorizationCopyWith<$Res> {
  _$AuthorizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = null,
    Object? description = null,
    Object? id = null,
    Object? pupilId = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pupilId: null == pupilId
          ? _value.pupilId
          : pupilId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationCopyWith<$Res>
    implements $AuthorizationCopyWith<$Res> {
  factory _$$_AuthorizationCopyWith(
          _$_Authorization value, $Res Function(_$_Authorization) then) =
      __$$_AuthorizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String createdBy,
      String description,
      int id,
      int pupilId,
      bool? status});
}

/// @nodoc
class __$$_AuthorizationCopyWithImpl<$Res>
    extends _$AuthorizationCopyWithImpl<$Res, _$_Authorization>
    implements _$$_AuthorizationCopyWith<$Res> {
  __$$_AuthorizationCopyWithImpl(
      _$_Authorization _value, $Res Function(_$_Authorization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = null,
    Object? description = null,
    Object? id = null,
    Object? pupilId = null,
    Object? status = freezed,
  }) {
    return _then(_$_Authorization(
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pupilId: null == pupilId
          ? _value.pupilId
          : pupilId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Authorization implements _Authorization {
  const _$_Authorization(
      {required this.createdBy,
      required this.description,
      required this.id,
      required this.pupilId,
      this.status});

  factory _$_Authorization.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorizationFromJson(json);

  @override
  final String createdBy;
  @override
  final String description;
  @override
  final int id;
  @override
  final int pupilId;
  @override
  final bool? status;

  @override
  String toString() {
    return 'Authorization(createdBy: $createdBy, description: $description, id: $id, pupilId: $pupilId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authorization &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pupilId, pupilId) || other.pupilId == pupilId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdBy, description, id, pupilId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationCopyWith<_$_Authorization> get copyWith =>
      __$$_AuthorizationCopyWithImpl<_$_Authorization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizationToJson(
      this,
    );
  }
}

abstract class _Authorization implements Authorization {
  const factory _Authorization(
      {required final String createdBy,
      required final String description,
      required final int id,
      required final int pupilId,
      final bool? status}) = _$_Authorization;

  factory _Authorization.fromJson(Map<String, dynamic> json) =
      _$_Authorization.fromJson;

  @override
  String get createdBy;
  @override
  String get description;
  @override
  int get id;
  @override
  int get pupilId;
  @override
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationCopyWith<_$_Authorization> get copyWith =>
      throw _privateConstructorUsedError;
}

Pupil _$PupilFromJson(Map<String, dynamic> json) {
  return _Pupil.fromJson(json);
}

/// @nodoc
mixin _$Pupil {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get schoolyear => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get communicationPupil => throw _privateConstructorUsedError;
  String? get communicationTutor1 => throw _privateConstructorUsedError;
  String? get communicationTutor2 => throw _privateConstructorUsedError;
  int? get credit => throw _privateConstructorUsedError;
  String? get fiveYears => throw _privateConstructorUsedError;
  int? get individualDevelopmentPlan => throw _privateConstructorUsedError;
  int get internalId => throw _privateConstructorUsedError;
  DateTime? get migrationSupportEnds => throw _privateConstructorUsedError;
  DateTime? get migrationFollowSupportEnds =>
      throw _privateConstructorUsedError;
  bool get ogs => throw _privateConstructorUsedError;
  int? get preschoolRevision => throw _privateConstructorUsedError;
  String? get specialInformation => throw _privateConstructorUsedError;
  String? get specialNeeds => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get pupilId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Admonition? get admonition => throw _privateConstructorUsedError;
  MissedClass? get missedClass => throw _privateConstructorUsedError;
  Authorization? get authorization => throw _privateConstructorUsedError;
  PupilList? get pupilList => throw _privateConstructorUsedError;
  PupilWorkbook? get pupilWorkbook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PupilCopyWith<Pupil> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PupilCopyWith<$Res> {
  factory $PupilCopyWith(Pupil value, $Res Function(Pupil) then) =
      _$PupilCopyWithImpl<$Res, Pupil>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? schoolyear,
      String? group,
      String? language,
      String? avatarUrl,
      String? communicationPupil,
      String? communicationTutor1,
      String? communicationTutor2,
      int? credit,
      String? fiveYears,
      int? individualDevelopmentPlan,
      int internalId,
      DateTime? migrationSupportEnds,
      DateTime? migrationFollowSupportEnds,
      bool ogs,
      int? preschoolRevision,
      String? specialInformation,
      String? specialNeeds,
      int id,
      int pupilId,
      bool? status,
      Admonition? admonition,
      MissedClass? missedClass,
      Authorization? authorization,
      PupilList? pupilList,
      PupilWorkbook? pupilWorkbook});

  $AdmonitionCopyWith<$Res>? get admonition;
  $MissedClassCopyWith<$Res>? get missedClass;
  $AuthorizationCopyWith<$Res>? get authorization;
  $PupilListCopyWith<$Res>? get pupilList;
  $PupilWorkbookCopyWith<$Res>? get pupilWorkbook;
}

/// @nodoc
class _$PupilCopyWithImpl<$Res, $Val extends Pupil>
    implements $PupilCopyWith<$Res> {
  _$PupilCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? schoolyear = freezed,
    Object? group = freezed,
    Object? language = freezed,
    Object? avatarUrl = freezed,
    Object? communicationPupil = freezed,
    Object? communicationTutor1 = freezed,
    Object? communicationTutor2 = freezed,
    Object? credit = freezed,
    Object? fiveYears = freezed,
    Object? individualDevelopmentPlan = freezed,
    Object? internalId = null,
    Object? migrationSupportEnds = freezed,
    Object? migrationFollowSupportEnds = freezed,
    Object? ogs = null,
    Object? preschoolRevision = freezed,
    Object? specialInformation = freezed,
    Object? specialNeeds = freezed,
    Object? id = null,
    Object? pupilId = null,
    Object? status = freezed,
    Object? admonition = freezed,
    Object? missedClass = freezed,
    Object? authorization = freezed,
    Object? pupilList = freezed,
    Object? pupilWorkbook = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolyear: freezed == schoolyear
          ? _value.schoolyear
          : schoolyear // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationPupil: freezed == communicationPupil
          ? _value.communicationPupil
          : communicationPupil // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationTutor1: freezed == communicationTutor1
          ? _value.communicationTutor1
          : communicationTutor1 // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationTutor2: freezed == communicationTutor2
          ? _value.communicationTutor2
          : communicationTutor2 // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      fiveYears: freezed == fiveYears
          ? _value.fiveYears
          : fiveYears // ignore: cast_nullable_to_non_nullable
              as String?,
      individualDevelopmentPlan: freezed == individualDevelopmentPlan
          ? _value.individualDevelopmentPlan
          : individualDevelopmentPlan // ignore: cast_nullable_to_non_nullable
              as int?,
      internalId: null == internalId
          ? _value.internalId
          : internalId // ignore: cast_nullable_to_non_nullable
              as int,
      migrationSupportEnds: freezed == migrationSupportEnds
          ? _value.migrationSupportEnds
          : migrationSupportEnds // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      migrationFollowSupportEnds: freezed == migrationFollowSupportEnds
          ? _value.migrationFollowSupportEnds
          : migrationFollowSupportEnds // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ogs: null == ogs
          ? _value.ogs
          : ogs // ignore: cast_nullable_to_non_nullable
              as bool,
      preschoolRevision: freezed == preschoolRevision
          ? _value.preschoolRevision
          : preschoolRevision // ignore: cast_nullable_to_non_nullable
              as int?,
      specialInformation: freezed == specialInformation
          ? _value.specialInformation
          : specialInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      specialNeeds: freezed == specialNeeds
          ? _value.specialNeeds
          : specialNeeds // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pupilId: null == pupilId
          ? _value.pupilId
          : pupilId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      admonition: freezed == admonition
          ? _value.admonition
          : admonition // ignore: cast_nullable_to_non_nullable
              as Admonition?,
      missedClass: freezed == missedClass
          ? _value.missedClass
          : missedClass // ignore: cast_nullable_to_non_nullable
              as MissedClass?,
      authorization: freezed == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as Authorization?,
      pupilList: freezed == pupilList
          ? _value.pupilList
          : pupilList // ignore: cast_nullable_to_non_nullable
              as PupilList?,
      pupilWorkbook: freezed == pupilWorkbook
          ? _value.pupilWorkbook
          : pupilWorkbook // ignore: cast_nullable_to_non_nullable
              as PupilWorkbook?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdmonitionCopyWith<$Res>? get admonition {
    if (_value.admonition == null) {
      return null;
    }

    return $AdmonitionCopyWith<$Res>(_value.admonition!, (value) {
      return _then(_value.copyWith(admonition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MissedClassCopyWith<$Res>? get missedClass {
    if (_value.missedClass == null) {
      return null;
    }

    return $MissedClassCopyWith<$Res>(_value.missedClass!, (value) {
      return _then(_value.copyWith(missedClass: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorizationCopyWith<$Res>? get authorization {
    if (_value.authorization == null) {
      return null;
    }

    return $AuthorizationCopyWith<$Res>(_value.authorization!, (value) {
      return _then(_value.copyWith(authorization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PupilListCopyWith<$Res>? get pupilList {
    if (_value.pupilList == null) {
      return null;
    }

    return $PupilListCopyWith<$Res>(_value.pupilList!, (value) {
      return _then(_value.copyWith(pupilList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PupilWorkbookCopyWith<$Res>? get pupilWorkbook {
    if (_value.pupilWorkbook == null) {
      return null;
    }

    return $PupilWorkbookCopyWith<$Res>(_value.pupilWorkbook!, (value) {
      return _then(_value.copyWith(pupilWorkbook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PupilCopyWith<$Res> implements $PupilCopyWith<$Res> {
  factory _$$_PupilCopyWith(_$_Pupil value, $Res Function(_$_Pupil) then) =
      __$$_PupilCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? schoolyear,
      String? group,
      String? language,
      String? avatarUrl,
      String? communicationPupil,
      String? communicationTutor1,
      String? communicationTutor2,
      int? credit,
      String? fiveYears,
      int? individualDevelopmentPlan,
      int internalId,
      DateTime? migrationSupportEnds,
      DateTime? migrationFollowSupportEnds,
      bool ogs,
      int? preschoolRevision,
      String? specialInformation,
      String? specialNeeds,
      int id,
      int pupilId,
      bool? status,
      Admonition? admonition,
      MissedClass? missedClass,
      Authorization? authorization,
      PupilList? pupilList,
      PupilWorkbook? pupilWorkbook});

  @override
  $AdmonitionCopyWith<$Res>? get admonition;
  @override
  $MissedClassCopyWith<$Res>? get missedClass;
  @override
  $AuthorizationCopyWith<$Res>? get authorization;
  @override
  $PupilListCopyWith<$Res>? get pupilList;
  @override
  $PupilWorkbookCopyWith<$Res>? get pupilWorkbook;
}

/// @nodoc
class __$$_PupilCopyWithImpl<$Res> extends _$PupilCopyWithImpl<$Res, _$_Pupil>
    implements _$$_PupilCopyWith<$Res> {
  __$$_PupilCopyWithImpl(_$_Pupil _value, $Res Function(_$_Pupil) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? schoolyear = freezed,
    Object? group = freezed,
    Object? language = freezed,
    Object? avatarUrl = freezed,
    Object? communicationPupil = freezed,
    Object? communicationTutor1 = freezed,
    Object? communicationTutor2 = freezed,
    Object? credit = freezed,
    Object? fiveYears = freezed,
    Object? individualDevelopmentPlan = freezed,
    Object? internalId = null,
    Object? migrationSupportEnds = freezed,
    Object? migrationFollowSupportEnds = freezed,
    Object? ogs = null,
    Object? preschoolRevision = freezed,
    Object? specialInformation = freezed,
    Object? specialNeeds = freezed,
    Object? id = null,
    Object? pupilId = null,
    Object? status = freezed,
    Object? admonition = freezed,
    Object? missedClass = freezed,
    Object? authorization = freezed,
    Object? pupilList = freezed,
    Object? pupilWorkbook = freezed,
  }) {
    return _then(_$_Pupil(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolyear: freezed == schoolyear
          ? _value.schoolyear
          : schoolyear // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationPupil: freezed == communicationPupil
          ? _value.communicationPupil
          : communicationPupil // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationTutor1: freezed == communicationTutor1
          ? _value.communicationTutor1
          : communicationTutor1 // ignore: cast_nullable_to_non_nullable
              as String?,
      communicationTutor2: freezed == communicationTutor2
          ? _value.communicationTutor2
          : communicationTutor2 // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      fiveYears: freezed == fiveYears
          ? _value.fiveYears
          : fiveYears // ignore: cast_nullable_to_non_nullable
              as String?,
      individualDevelopmentPlan: freezed == individualDevelopmentPlan
          ? _value.individualDevelopmentPlan
          : individualDevelopmentPlan // ignore: cast_nullable_to_non_nullable
              as int?,
      internalId: null == internalId
          ? _value.internalId
          : internalId // ignore: cast_nullable_to_non_nullable
              as int,
      migrationSupportEnds: freezed == migrationSupportEnds
          ? _value.migrationSupportEnds
          : migrationSupportEnds // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      migrationFollowSupportEnds: freezed == migrationFollowSupportEnds
          ? _value.migrationFollowSupportEnds
          : migrationFollowSupportEnds // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ogs: null == ogs
          ? _value.ogs
          : ogs // ignore: cast_nullable_to_non_nullable
              as bool,
      preschoolRevision: freezed == preschoolRevision
          ? _value.preschoolRevision
          : preschoolRevision // ignore: cast_nullable_to_non_nullable
              as int?,
      specialInformation: freezed == specialInformation
          ? _value.specialInformation
          : specialInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      specialNeeds: freezed == specialNeeds
          ? _value.specialNeeds
          : specialNeeds // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pupilId: null == pupilId
          ? _value.pupilId
          : pupilId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      admonition: freezed == admonition
          ? _value.admonition
          : admonition // ignore: cast_nullable_to_non_nullable
              as Admonition?,
      missedClass: freezed == missedClass
          ? _value.missedClass
          : missedClass // ignore: cast_nullable_to_non_nullable
              as MissedClass?,
      authorization: freezed == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as Authorization?,
      pupilList: freezed == pupilList
          ? _value.pupilList
          : pupilList // ignore: cast_nullable_to_non_nullable
              as PupilList?,
      pupilWorkbook: freezed == pupilWorkbook
          ? _value.pupilWorkbook
          : pupilWorkbook // ignore: cast_nullable_to_non_nullable
              as PupilWorkbook?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Pupil implements _Pupil {
  const _$_Pupil(
      {this.firstName,
      this.lastName,
      this.schoolyear,
      this.group,
      this.language,
      this.avatarUrl,
      this.communicationPupil,
      this.communicationTutor1,
      this.communicationTutor2,
      this.credit,
      this.fiveYears,
      this.individualDevelopmentPlan,
      required this.internalId,
      this.migrationSupportEnds,
      this.migrationFollowSupportEnds,
      required this.ogs,
      this.preschoolRevision,
      this.specialInformation,
      this.specialNeeds,
      required this.id,
      required this.pupilId,
      this.status,
      this.admonition,
      this.missedClass,
      this.authorization,
      this.pupilList,
      this.pupilWorkbook});

  factory _$_Pupil.fromJson(Map<String, dynamic> json) =>
      _$$_PupilFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? schoolyear;
  @override
  final String? group;
  @override
  final String? language;
  @override
  final String? avatarUrl;
  @override
  final String? communicationPupil;
  @override
  final String? communicationTutor1;
  @override
  final String? communicationTutor2;
  @override
  final int? credit;
  @override
  final String? fiveYears;
  @override
  final int? individualDevelopmentPlan;
  @override
  final int internalId;
  @override
  final DateTime? migrationSupportEnds;
  @override
  final DateTime? migrationFollowSupportEnds;
  @override
  final bool ogs;
  @override
  final int? preschoolRevision;
  @override
  final String? specialInformation;
  @override
  final String? specialNeeds;
  @override
  final int id;
  @override
  final int pupilId;
  @override
  final bool? status;
  @override
  final Admonition? admonition;
  @override
  final MissedClass? missedClass;
  @override
  final Authorization? authorization;
  @override
  final PupilList? pupilList;
  @override
  final PupilWorkbook? pupilWorkbook;

  @override
  String toString() {
    return 'Pupil(firstName: $firstName, lastName: $lastName, schoolyear: $schoolyear, group: $group, language: $language, avatarUrl: $avatarUrl, communicationPupil: $communicationPupil, communicationTutor1: $communicationTutor1, communicationTutor2: $communicationTutor2, credit: $credit, fiveYears: $fiveYears, individualDevelopmentPlan: $individualDevelopmentPlan, internalId: $internalId, migrationSupportEnds: $migrationSupportEnds, migrationFollowSupportEnds: $migrationFollowSupportEnds, ogs: $ogs, preschoolRevision: $preschoolRevision, specialInformation: $specialInformation, specialNeeds: $specialNeeds, id: $id, pupilId: $pupilId, status: $status, admonition: $admonition, missedClass: $missedClass, authorization: $authorization, pupilList: $pupilList, pupilWorkbook: $pupilWorkbook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pupil &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.schoolyear, schoolyear) ||
                other.schoolyear == schoolyear) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.communicationPupil, communicationPupil) ||
                other.communicationPupil == communicationPupil) &&
            (identical(other.communicationTutor1, communicationTutor1) ||
                other.communicationTutor1 == communicationTutor1) &&
            (identical(other.communicationTutor2, communicationTutor2) ||
                other.communicationTutor2 == communicationTutor2) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.fiveYears, fiveYears) ||
                other.fiveYears == fiveYears) &&
            (identical(other.individualDevelopmentPlan,
                    individualDevelopmentPlan) ||
                other.individualDevelopmentPlan == individualDevelopmentPlan) &&
            (identical(other.internalId, internalId) ||
                other.internalId == internalId) &&
            (identical(other.migrationSupportEnds, migrationSupportEnds) ||
                other.migrationSupportEnds == migrationSupportEnds) &&
            (identical(other.migrationFollowSupportEnds,
                    migrationFollowSupportEnds) ||
                other.migrationFollowSupportEnds ==
                    migrationFollowSupportEnds) &&
            (identical(other.ogs, ogs) || other.ogs == ogs) &&
            (identical(other.preschoolRevision, preschoolRevision) ||
                other.preschoolRevision == preschoolRevision) &&
            (identical(other.specialInformation, specialInformation) ||
                other.specialInformation == specialInformation) &&
            (identical(other.specialNeeds, specialNeeds) ||
                other.specialNeeds == specialNeeds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pupilId, pupilId) || other.pupilId == pupilId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.admonition, admonition) ||
                other.admonition == admonition) &&
            (identical(other.missedClass, missedClass) ||
                other.missedClass == missedClass) &&
            (identical(other.authorization, authorization) ||
                other.authorization == authorization) &&
            (identical(other.pupilList, pupilList) ||
                other.pupilList == pupilList) &&
            (identical(other.pupilWorkbook, pupilWorkbook) ||
                other.pupilWorkbook == pupilWorkbook));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        firstName,
        lastName,
        schoolyear,
        group,
        language,
        avatarUrl,
        communicationPupil,
        communicationTutor1,
        communicationTutor2,
        credit,
        fiveYears,
        individualDevelopmentPlan,
        internalId,
        migrationSupportEnds,
        migrationFollowSupportEnds,
        ogs,
        preschoolRevision,
        specialInformation,
        specialNeeds,
        id,
        pupilId,
        status,
        admonition,
        missedClass,
        authorization,
        pupilList,
        pupilWorkbook
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PupilCopyWith<_$_Pupil> get copyWith =>
      __$$_PupilCopyWithImpl<_$_Pupil>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PupilToJson(
      this,
    );
  }
}

abstract class _Pupil implements Pupil {
  const factory _Pupil(
      {final String? firstName,
      final String? lastName,
      final String? schoolyear,
      final String? group,
      final String? language,
      final String? avatarUrl,
      final String? communicationPupil,
      final String? communicationTutor1,
      final String? communicationTutor2,
      final int? credit,
      final String? fiveYears,
      final int? individualDevelopmentPlan,
      required final int internalId,
      final DateTime? migrationSupportEnds,
      final DateTime? migrationFollowSupportEnds,
      required final bool ogs,
      final int? preschoolRevision,
      final String? specialInformation,
      final String? specialNeeds,
      required final int id,
      required final int pupilId,
      final bool? status,
      final Admonition? admonition,
      final MissedClass? missedClass,
      final Authorization? authorization,
      final PupilList? pupilList,
      final PupilWorkbook? pupilWorkbook}) = _$_Pupil;

  factory _Pupil.fromJson(Map<String, dynamic> json) = _$_Pupil.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get schoolyear;
  @override
  String? get group;
  @override
  String? get language;
  @override
  String? get avatarUrl;
  @override
  String? get communicationPupil;
  @override
  String? get communicationTutor1;
  @override
  String? get communicationTutor2;
  @override
  int? get credit;
  @override
  String? get fiveYears;
  @override
  int? get individualDevelopmentPlan;
  @override
  int get internalId;
  @override
  DateTime? get migrationSupportEnds;
  @override
  DateTime? get migrationFollowSupportEnds;
  @override
  bool get ogs;
  @override
  int? get preschoolRevision;
  @override
  String? get specialInformation;
  @override
  String? get specialNeeds;
  @override
  int get id;
  @override
  int get pupilId;
  @override
  bool? get status;
  @override
  Admonition? get admonition;
  @override
  MissedClass? get missedClass;
  @override
  Authorization? get authorization;
  @override
  PupilList? get pupilList;
  @override
  PupilWorkbook? get pupilWorkbook;
  @override
  @JsonKey(ignore: true)
  _$$_PupilCopyWith<_$_Pupil> get copyWith =>
      throw _privateConstructorUsedError;
}
