import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/ai.dart';

part 'fd.g.dart';

@JsonSerializable()
class Fd {
  AI? aI;
  String? fN;
  String? eT;

  Fd({this.aI, this.fN, this.eT});

  factory Fd.fromJson(Map<String, dynamic> json) => _$FdFromJson(json);

  Map<String, dynamic> toJson() => _$FdToJson(this);
}
