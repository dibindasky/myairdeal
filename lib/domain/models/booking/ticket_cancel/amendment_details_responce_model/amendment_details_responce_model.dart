import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/status.dart';
import 'trip.dart';

part 'amendment_details_responce_model.g.dart';

@JsonSerializable()
class AmendmentDetailsResponceModel {
  String? bookingId;
  String? amendmentId;
  String? amendmentStatus;
  int? amendmentCharges;
  int? refundableAmount;
  List<Trip>? trips;
  String? remarks;
  Status? status;

  AmendmentDetailsResponceModel({
    this.bookingId,
    this.remarks,
    this.amendmentId,
    this.amendmentStatus,
    this.amendmentCharges,
    this.refundableAmount,
    this.trips,
    this.status,
  });

  factory AmendmentDetailsResponceModel.fromJson(Map<String, dynamic> json) {
    return _$AmendmentDetailsResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmendmentDetailsResponceModelToJson(this);
}
