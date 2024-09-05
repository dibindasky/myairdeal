// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combletion_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CombletionData _$CombletionDataFromJson(Map<String, dynamic> json) =>
    CombletionData(
      completeBookingData: json['completeBookingData'] == null
          ? null
          : CompleteBookingData.fromJson(
              json['completeBookingData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CombletionDataToJson(CombletionData instance) =>
    <String, dynamic>{
      'completeBookingData': instance.completeBookingData,
    };
