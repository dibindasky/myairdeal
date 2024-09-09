import 'package:json_annotation/json_annotation.dart';

import 'checkin_status_map.dart';
import 'pnr_details.dart';
// import 'ssr_meal_infos.dart';
import 'ticket_number_details.dart';

part 'traveller_info.g.dart';

@JsonSerializable()
class TravellerInfo {
  Map<String,dynamic>? ssrMealInfos;
  Map<String,dynamic>? ssrSeatInfos;
  Map<String,dynamic>? ssrBaggageInfos;
  PnrDetails? pnrDetails;
  TicketNumberDetails? ticketNumberDetails;
  CheckinStatusMap? checkinStatusMap;
  String? ti;
  String? pt;
  String? fN;
  String? lN;

  TravellerInfo({
    this.ssrMealInfos,
    this.ssrBaggageInfos,
    this.ssrSeatInfos,
    this.pnrDetails,
    this.ticketNumberDetails,
    this.checkinStatusMap,
    this.ti,
    this.pt,
    this.fN,
    this.lN,
  });

  factory TravellerInfo.fromJson(Map<String, dynamic> json) {
    return _$TravellerInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TravellerInfoToJson(this);
}
