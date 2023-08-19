// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pupil_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PupilBase _$PupilBaseFromJson(Map<String, dynamic> json) {
  return _PupilBase.fromJson(json);
}

/// @nodoc
mixin _$PupilBase {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get schoolyear => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PupilBaseCopyWith<PupilBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PupilBaseCopyWith<$Res> {
  factory $PupilBaseCopyWith(PupilBase value, $Res Function(PupilBase) then) =
      _$PupilBaseCopyWithImpl<$Res, PupilBase>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String schoolyear,
      String group,
      String language});
}

/// @nodoc
class _$PupilBaseCopyWithImpl<$Res, $Val extends PupilBase>
    implements $PupilBaseCopyWith<$Res> {
  _$PupilBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? schoolyear = null,
    Object? group = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolyear: null == schoolyear
          ? _value.schoolyear
          : schoolyear // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PupilBaseCopyWith<$Res> implements $PupilBaseCopyWith<$Res> {
  factory _$$_PupilBaseCopyWith(
          _$_PupilBase value, $Res Function(_$_PupilBase) then) =
      __$$_PupilBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String schoolyear,
      String group,
      String language});
}

/// @nodoc
class __$$_PupilBaseCopyWithImpl<$Res>
    extends _$PupilBaseCopyWithImpl<$Res, _$_PupilBase>
    implements _$$_PupilBaseCopyWith<$Res> {
  __$$_PupilBaseCopyWithImpl(
      _$_PupilBase _value, $Res Function(_$_PupilBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? schoolyear = null,
    Object? group = null,
    Object? language = null,
  }) {
    return _then(_$_PupilBase(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolyear: null == schoolyear
          ? _value.schoolyear
          : schoolyear // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PupilBase implements _PupilBase {
  const _$_PupilBase(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.schoolyear,
      required this.group,
      required this.language});

  factory _$_PupilBase.fromJson(Map<String, dynamic> json) =>
      _$$_PupilBaseFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String schoolyear;
  @override
  final String group;
  @override
  final String language;

  @override
  String toString() {
    return 'PupilBase(id: $id, firstName: $firstName, lastName: $lastName, schoolyear: $schoolyear, group: $group, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PupilBase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.schoolyear, schoolyear) ||
                other.schoolyear == schoolyear) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, lastName, schoolyear, group, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PupilBaseCopyWith<_$_PupilBase> get copyWith =>
      __$$_PupilBaseCopyWithImpl<_$_PupilBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PupilBaseToJson(
      this,
    );
  }
}

abstract class _PupilBase implements PupilBase {
  const factory _PupilBase(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String schoolyear,
      required final String group,
      required final String language}) = _$_PupilBase;

  factory _PupilBase.fromJson(Map<String, dynamic> json) =
      _$_PupilBase.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get schoolyear;
  @override
  String get group;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_PupilBaseCopyWith<_$_PupilBase> get copyWith =>
      throw _privateConstructorUsedError;
}

PupilBaseList _$PupilBaseListFromJson(Map<String, dynamic> json) {
  return _PupilBaseList.fromJson(json);
}

/// @nodoc
mixin _$PupilBaseList {
  List<PupilBase> get pupilBaseList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PupilBaseListCopyWith<PupilBaseList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PupilBaseListCopyWith<$Res> {
  factory $PupilBaseListCopyWith(
          PupilBaseList value, $Res Function(PupilBaseList) then) =
      _$PupilBaseListCopyWithImpl<$Res, PupilBaseList>;
  @useResult
  $Res call({List<PupilBase> pupilBaseList});
}

/// @nodoc
class _$PupilBaseListCopyWithImpl<$Res, $Val extends PupilBaseList>
    implements $PupilBaseListCopyWith<$Res> {
  _$PupilBaseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pupilBaseList = null,
  }) {
    return _then(_value.copyWith(
      pupilBaseList: null == pupilBaseList
          ? _value.pupilBaseList
          : pupilBaseList // ignore: cast_nullable_to_non_nullable
              as List<PupilBase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PupilBaseListCopyWith<$Res>
    implements $PupilBaseListCopyWith<$Res> {
  factory _$$_PupilBaseListCopyWith(
          _$_PupilBaseList value, $Res Function(_$_PupilBaseList) then) =
      __$$_PupilBaseListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PupilBase> pupilBaseList});
}

/// @nodoc
class __$$_PupilBaseListCopyWithImpl<$Res>
    extends _$PupilBaseListCopyWithImpl<$Res, _$_PupilBaseList>
    implements _$$_PupilBaseListCopyWith<$Res> {
  __$$_PupilBaseListCopyWithImpl(
      _$_PupilBaseList _value, $Res Function(_$_PupilBaseList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pupilBaseList = null,
  }) {
    return _then(_$_PupilBaseList(
      pupilBaseList: null == pupilBaseList
          ? _value._pupilBaseList
          : pupilBaseList // ignore: cast_nullable_to_non_nullable
              as List<PupilBase>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PupilBaseList implements _PupilBaseList {
  const _$_PupilBaseList({required final List<PupilBase> pupilBaseList})
      : _pupilBaseList = pupilBaseList;

  factory _$_PupilBaseList.fromJson(Map<String, dynamic> json) =>
      _$$_PupilBaseListFromJson(json);

  final List<PupilBase> _pupilBaseList;
  @override
  List<PupilBase> get pupilBaseList {
    if (_pupilBaseList is EqualUnmodifiableListView) return _pupilBaseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pupilBaseList);
  }

  @override
  String toString() {
    return 'PupilBaseList(pupilBaseList: $pupilBaseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PupilBaseList &&
            const DeepCollectionEquality()
                .equals(other._pupilBaseList, _pupilBaseList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pupilBaseList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PupilBaseListCopyWith<_$_PupilBaseList> get copyWith =>
      __$$_PupilBaseListCopyWithImpl<_$_PupilBaseList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PupilBaseListToJson(
      this,
    );
  }
}

abstract class _PupilBaseList implements PupilBaseList {
  const factory _PupilBaseList({required final List<PupilBase> pupilBaseList}) =
      _$_PupilBaseList;

  factory _PupilBaseList.fromJson(Map<String, dynamic> json) =
      _$_PupilBaseList.fromJson;

  @override
  List<PupilBase> get pupilBaseList;
  @override
  @JsonKey(ignore: true)
  _$$_PupilBaseListCopyWith<_$_PupilBaseList> get copyWith =>
      throw _privateConstructorUsedError;
}
