import 'package:json_annotation/json_annotation.dart';

part 'retrieve_single_booking_request_model.g.dart';

@JsonSerializable()
class RetrieveSingleBookingRequestModel {
  String? bookingId;

  RetrieveSingleBookingRequestModel({this.bookingId});

  factory RetrieveSingleBookingRequestModel.fromJson(
      Map<String, dynamic> json) {
    return _$RetrieveSingleBookingRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RetrieveSingleBookingRequestModelToJson(this);
  }
}
