import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/promo/promo.dart';

import 'combletion_data/data.dart';
import 'combletion_data/mark_up.dart';
import 'combletion_data/payment.dart';
import 'combletion_data/search_query.dart';

part 'complete_booking_data.g.dart';

@JsonSerializable()
class CompleteBookingData {
  Payment? payment;
  @JsonKey(name: '_id')
  String? id;
  String? bookingId;
  String? userId;
  SearchQuery? searchQuery;
  MarkUp? markUp;
  bool? emailSent;
  List<dynamic>? amendmentIds;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  Data? data;
  Promo? promo;

  CompleteBookingData({
    this.payment,
    this.id,
    this.bookingId,
    this.userId,
    this.searchQuery,
    this.markUp,
    this.emailSent,
    this.amendmentIds,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.data,
    this.promo,
  });

  factory CompleteBookingData.fromJson(Map<String, dynamic> json) {
    return _$CompleteBookingDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CompleteBookingDataToJson(this);
}
