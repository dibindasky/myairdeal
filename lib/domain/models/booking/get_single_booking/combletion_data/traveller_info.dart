import 'package:json_annotation/json_annotation.dart';

import 'checkin_status_map.dart';
import 'pnr_details.dart';
import 'ticket_number_details.dart';

part 'traveller_info.g.dart';

@JsonSerializable()
class TravellerInfo {
  PnrDetails? pnrDetails;
  TicketNumberDetails? ticketNumberDetails;
  CheckinStatusMap? checkinStatusMap;
  String? ti;
  String? pt;
  String? fN;
  String? lN;
  String? dob;
  String? pNum;
  String? eD;
  String? pNat;
  String? pid;

  TravellerInfo({
    this.pnrDetails,
    this.ticketNumberDetails,
    this.checkinStatusMap,
    this.ti,
    this.pt,
    this.fN,
    this.lN,
    this.dob,
    this.pNum,
    this.eD,
    this.pNat,
    this.pid,
  });

  factory TravellerInfo.fromJson(Map<String, dynamic> json) {
    return _$TravellerInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TravellerInfoToJson(this);
}
