// // To parse this JSON data, do
// //
// //     final pupilBase = pupilBaseFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// List<PupilBase> pupilBaseFromJson(String str) =>
//     List<PupilBase>.from(json.decode(str).map((x) => PupilBase.fromJson(x)));

// String pupilBaseToJson(List<PupilBase> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class PupilBase {
//   int id;
//   String firstName;
//   String lastName;
//   String group;
//   String schoolyear;
//   String language;

//   PupilBase({
//     required this.id,
//     required this.firstName,
//     required this.lastName,
//     required this.group,
//     required this.schoolyear,
//     required this.language,
//   });

//   PupilBase copyWith({
//     int? id,
//     String? firstName,
//     String? lastName,
//     String? group,
//     String? schoolyear,
//     String? language,
//   }) =>
//       PupilBase(
//         id: id ?? this.id,
//         firstName: firstName ?? this.firstName,
//         lastName: lastName ?? this.lastName,
//         group: group ?? this.group,
//         schoolyear: schoolyear ?? this.schoolyear,
//         language: language ?? this.language,
//       );

//   factory PupilBase.fromJson(Map<String, dynamic> json) => PupilBase(
//         id: json["id"] as int,
//         firstName: json["firstName"] as String,
//         lastName: json["lastName"] as String,
//         group: json["group"] as String,
//         schoolyear: json["schoolyear"] as String,
//         language: json["language"] as String,
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "firstName": firstName,
//         "lastName": lastName,
//         "group": group,
//         "schoolyear": schoolyear,
//         "language": language,
//       };
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pupil_base.freezed.dart';
part 'pupil_base.g.dart';

@freezed
abstract class PupilBase with _$PupilBase {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PupilBase({
    required int id,
    required String firstName,
    required String lastName,
    required String schoolyear,
    required String group,
    required String language,
  }) = _PupilBase;
  factory PupilBase.fromJson(Map<String, dynamic> json) =>
      _$PupilBaseFromJson(json);
}

@freezed
abstract class PupilBaseList with _$PupilBaseList {
  const factory PupilBaseList({
    required List<PupilBase> pupilBaseList,
  }) = _PupilBaseList;
  factory PupilBaseList.fromJson(Map<String, dynamic> json) =>
      _$PupilBaseListFromJson(json);
}
