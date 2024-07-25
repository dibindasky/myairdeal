import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/status.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/error.dart';
import 'trip.dart';

part 'amendment_charges_responce_model.g.dart';

@JsonSerializable()
class AmendmentChargesResponceModel {
  String? bookingId;
  List<Trip>? trips;
  Status? status;
  List<Error>? errors;

  AmendmentChargesResponceModel(
      {this.bookingId, this.trips, this.status, this.errors});

  factory AmendmentChargesResponceModel.fromJson(Map<String, dynamic> json) {
    return _$AmendmentChargesResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmendmentChargesResponceModelToJson(this);
}
