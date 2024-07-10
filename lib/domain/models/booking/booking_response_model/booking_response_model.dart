import 'package:json_annotation/json_annotation.dart';

import '../../search/flight_sort_response_model/status.dart';

part 'booking_response_model.g.dart';

@JsonSerializable()
class BookingResponseModel {
  String? bookingId;
  Status? status;

  BookingResponseModel({this.bookingId, this.status});

  factory BookingResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BookingResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookingResponseModelToJson(this);
}
