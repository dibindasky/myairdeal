import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/ai.dart';

part 'fd.g.dart';

@JsonSerializable()
class Fd {
  Ai? aI;
  String? fN;
  String? eT;

  Fd({this.aI, this.fN, this.eT});

  factory Fd.fromJson(Map<String, dynamic> json) => _$FdFromJson(json);

  Map<String, dynamic> toJson() => _$FdToJson(this);
}
