// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schoolday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Schoolday _$SchooldayFromJson(Map<String, dynamic> json) {
  return _Schoolday.fromJson(json);
}

/// @nodoc
mixin _$Schoolday {
  DateTime get schoolday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchooldayCopyWith<Schoolday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchooldayCopyWith<$Res> {
  factory $SchooldayCopyWith(Schoolday value, $Res Function(Schoolday) then) =
      _$SchooldayCopyWithImpl<$Res, Schoolday>;
  @useResult
  $Res call({DateTime schoolday});
}

/// @nodoc
class _$SchooldayCopyWithImpl<$Res, $Val extends Schoolday>
    implements $SchooldayCopyWith<$Res> {
  _$SchooldayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolday = null,
  }) {
    return _then(_value.copyWith(
      schoolday: null == schoolday
          ? _value.schoolday
          : schoolday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchooldayCopyWith<$Res> implements $SchooldayCopyWith<$Res> {
  factory _$$_SchooldayCopyWith(
          _$_Schoolday value, $Res Function(_$_Schoolday) then) =
      __$$_SchooldayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime schoolday});
}

/// @nodoc
class __$$_SchooldayCopyWithImpl<$Res>
    extends _$SchooldayCopyWithImpl<$Res, _$_Schoolday>
    implements _$$_SchooldayCopyWith<$Res> {
  __$$_SchooldayCopyWithImpl(
      _$_Schoolday _value, $Res Function(_$_Schoolday) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolday = null,
  }) {
    return _then(_$_Schoolday(
      schoolday: null == schoolday
          ? _value.schoolday
          : schoolday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Schoolday implements _Schoolday {
  const _$_Schoolday({required this.schoolday});

  factory _$_Schoolday.fromJson(Map<String, dynamic> json) =>
      _$$_SchooldayFromJson(json);

  @override
  final DateTime schoolday;

  @override
  String toString() {
    return 'Schoolday(schoolday: $schoolday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schoolday &&
            (identical(other.schoolday, schoolday) ||
                other.schoolday == schoolday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchooldayCopyWith<_$_Schoolday> get copyWith =>
      __$$_SchooldayCopyWithImpl<_$_Schoolday>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchooldayToJson(
      this,
    );
  }
}

abstract class _Schoolday implements Schoolday {
  const factory _Schoolday({required final DateTime schoolday}) = _$_Schoolday;

  factory _Schoolday.fromJson(Map<String, dynamic> json) =
      _$_Schoolday.fromJson;

  @override
  DateTime get schoolday;
  @override
  @JsonKey(ignore: true)
  _$$_SchooldayCopyWith<_$_Schoolday> get copyWith =>
      throw _privateConstructorUsedError;
}
