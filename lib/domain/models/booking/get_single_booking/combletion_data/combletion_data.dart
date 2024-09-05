import 'package:json_annotation/json_annotation.dart';

import '../complete_booking_data.dart';

part 'combletion_data.g.dart';

@JsonSerializable()
class CombletionData {
  CompleteBookingData? completeBookingData;

  CombletionData({this.completeBookingData});

  factory CombletionData.fromJson(Map<String, dynamic> json) {
    return _$CombletionDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CombletionDataToJson(this);
}
