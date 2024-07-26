import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/amendment.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/status.dart';
import 'gst_info.dart';
import 'item_infos.dart';
import 'order.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/error.dart';
part 'retrieve_single_bookingresponce_model.g.dart';

@JsonSerializable()
class RetrieveSingleBookingresponceModel {
  @JsonKey(name: 'searchQuery')
  FlightSearchQuery? allBookingSearchquery;
  Order? order;
  ItemInfos? itemInfos;

  GstInfo? gstInfo;
  Status? status;
  List<Error>? errors;

  RetrieveSingleBookingresponceModel({
    this.order,
    this.itemInfos,
    this.gstInfo,
    this.status,
    this.errors,
    this.allBookingSearchquery,
  });

  factory RetrieveSingleBookingresponceModel.fromJson(
      Map<String, dynamic> json) {
    return _$RetrieveSingleBookingresponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RetrieveSingleBookingresponceModelToJson(this);
  }
}
