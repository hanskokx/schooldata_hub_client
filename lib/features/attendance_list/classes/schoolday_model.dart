import 'package:freezed_annotation/freezed_annotation.dart';

part 'schoolday_model.freezed.dart';
part 'schoolday_model.g.dart';

@freezed
abstract class Schoolday with _$Schoolday {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Schoolday({
    required DateTime schoolday,
  }) = _Schoolday;
  factory Schoolday.fromJson(Map<String, dynamic> json) =>
      _$SchooldayFromJson(json);
}



// // To parse this JSON data, do
// //
// //     final schoolday = schooldayFromJson(jsonString);

// import 'dart:convert';

// List<Schoolday> schooldayFromJson(String str) =>
//     List<Schoolday>.from(json.decode(str).map((x) => Schoolday.fromJson(x)));

// String schooldayToJson(List<Schoolday> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Schoolday {
//   DateTime schoolday;

//   Schoolday({
//     required this.schoolday,
//   });

//   factory Schoolday.fromJson(Map<String, dynamic> json) => Schoolday(
//         schoolday: DateTime.parse(json["schoolday"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "schoolday":
//             "${schoolday.year.toString().padLeft(4, '0')}-${schoolday.month.toString().padLeft(2, '0')}-${schoolday.day.toString().padLeft(2, '0')}",
//       };
// }
