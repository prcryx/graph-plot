import 'package:graph_plot/common/constants/app_constants.dart';

import '../common/types/gender.dart';
import '../common/types/status.dart';
import 'package:json_annotation/json_annotation.dart';
part 'diabetes_data.g.dart';

@JsonSerializable()
class DiabetesData {
  final int age;
  final Gender gender;
  final double bmi;
  final int bloodPressure;
  final int glucose;
  final int insulin;
  final double cholesterol;
  final double hbA1c;
  final Status status;

  DiabetesData({
    required this.age,
    required this.gender,
    required this.bmi,
    required this.bloodPressure,
    required this.glucose,
    required this.insulin,
    required this.cholesterol,
    required this.hbA1c,
    required this.status,
  });

  factory DiabetesData.fromJson(Map<String, dynamic> json) =>
      _$DiabetesDataFromJson(json);

  Map<String, dynamic> toJson() => _$DiabetesDataToJson(this);
}
