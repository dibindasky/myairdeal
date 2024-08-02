import 'package:json_annotation/json_annotation.dart';

import 'cancellation.dart';
import 'datechange.dart';
import 'no_show.dart';
import 'seat_chargeable.dart';

part 'tfr.g.dart';

@JsonSerializable()
class Tfr {
  @JsonKey(name: 'NO_SHOW')
  List<NoShow>? noShow;
  @JsonKey(name: 'DATECHANGE')
  List<Datechange>? datechange;
  @JsonKey(name: 'CANCELLATION')
  List<Cancellation>? cancellation;
  @JsonKey(name: 'SEAT_CHARGEABLE')
  List<SeatChargeable>? seatChargeable;

  Tfr({
    this.noShow,
    this.datechange,
    this.cancellation,
    this.seatChargeable,
  });

  factory Tfr.fromJson(Map<String, dynamic> json) => _$TfrFromJson(json);

  Map<String, dynamic> toJson() => _$TfrToJson(this);
}
