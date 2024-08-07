import 'package:json_annotation/json_annotation.dart';

part 'booking_ids_model.g.dart';

@JsonSerializable()
class BookingIdsModel {
  @JsonKey(name: '_id')
  String? id;
  String? bookingId;

  BookingIdsModel({this.id, this.bookingId});

  factory BookingIdsModel.fromJson(Map<String, dynamic> json) {
    return _$BookingIdsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookingIdsModelToJson(this);
}
