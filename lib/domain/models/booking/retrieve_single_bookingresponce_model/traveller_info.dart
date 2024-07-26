import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/traveller.dart';

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

  TravellerInfo({
    this.pnrDetails,
    this.ticketNumberDetails,
    this.checkinStatusMap,
    this.ti,
    this.pt,
    this.fN,
    this.lN,
    this.dob,
  });

  factory TravellerInfo.fromJson(Map<String, dynamic> json) {
    return _$TravellerInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TravellerInfoToJson(this);

  bool checkEquel(TravellerInfo? trave) {
    if (trave == null) return false;
    if (ti == trave.ti &&
        fN == trave.fN &&
        lN == trave.lN &&
        dob == trave.dob &&
        pt == pt) {
      return true;
    }
    return false;
  }

  static Traveller getTraveler(TravellerInfo tra) {
    return Traveller(fn: tra.fN, ln: tra.lN);
  }
}
