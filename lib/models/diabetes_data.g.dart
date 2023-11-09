// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diabetes_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiabetesData _$DiabetesDataFromJson(Map<String, dynamic> json) => DiabetesData(
      age: json['age'] as int,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      bmi: (json['bmi'] as num).toDouble(),
      bloodPressure: json['bloodPressure'] as int,
      glucose: json['glucose'] as int,
      insulin: json['insulin'] as int,
      cholesterol: (json['cholesterol'] as num).toDouble(),
      hbA1c: (json['hbA1c'] as num).toDouble(),
      status: $enumDecode(_$StatusEnumMap, json['status']),
    );

Map<String, dynamic> _$DiabetesDataToJson(DiabetesData instance) =>
    <String, dynamic>{
      'age': instance.age,
      'gender': _$GenderEnumMap[instance.gender]!,
      'bmi': instance.bmi,
      'bloodPressure': instance.bloodPressure,
      'glucose': instance.glucose,
      'insulin': instance.insulin,
      'cholesterol': instance.cholesterol,
      'hbA1c': instance.hbA1c,
      'status': _$StatusEnumMap[instance.status]!,
    };

const _$GenderEnumMap = {
  Gender.male: AppConstants.male,
  Gender.female: AppConstants.female,
};

const _$StatusEnumMap = {
  Status.yes: AppConstants.none,
  Status.no: 'no',
};
