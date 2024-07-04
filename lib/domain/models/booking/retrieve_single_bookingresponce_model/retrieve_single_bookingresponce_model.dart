import 'package:json_annotation/json_annotation.dart';
import 'gst_info.dart';
import 'item_infos.dart';
import 'order.dart';
import 'status.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/error.dart';
part 'retrieve_single_bookingresponce_model.g.dart';

@JsonSerializable()
class RetrieveSingleBookingresponceModel {
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
  });

  factory RetrieveSingleBookingresponceModel.fromJson(
      Map<String, dynamic> json) {
    return _$RetrieveSingleBookingresponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RetrieveSingleBookingresponceModelToJson(this);
  }
}
