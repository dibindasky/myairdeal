import 'package:json_annotation/json_annotation.dart';

import 'gst_info.dart';
import 'item_infos.dart';
import 'order.dart';
import 'status.dart';

part 'retrieve_single_bookingresponce_model.g.dart';

@JsonSerializable()
class RetrieveSingleBookingresponceModel {
  Order? order;
  ItemInfos? itemInfos;
  GstInfo? gstInfo;
  Status? status;

  RetrieveSingleBookingresponceModel(
      {this.order, this.itemInfos, this.gstInfo, this.status});

  factory RetrieveSingleBookingresponceModel.fromJson(
          Map<String, dynamic> json) =>
      _$RetrieveSingleBookingresponceModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RetrieveSingleBookingresponceModelToJson(this);
}
