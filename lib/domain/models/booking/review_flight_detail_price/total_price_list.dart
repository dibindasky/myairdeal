import 'package:json_annotation/json_annotation.dart';

import '../../search/flight_sort_response_model/fd_price.dart';
import 'fare_rule_information.dart';
import 'pc.dart';

part 'total_price_list.g.dart';

@JsonSerializable()
class TotalPriceList {
  FdPrice? fd;
  String? fareIdentifier;
  String? id;
  List<dynamic>? messages;
  Pc? pc;
  FareRuleInformation? fareRuleInformation;

  TotalPriceList({
    this.fd,
    this.fareIdentifier,
    this.id,
    this.messages,
    this.pc,
    this.fareRuleInformation,
  });

  factory TotalPriceList.fromJson(Map<String, dynamic> json) {
    return _$TotalPriceListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalPriceListToJson(this);

  TotalPriceList copyWith({
    FdPrice? fd,
    String? fareIdentifier,
    String? id,
    List<dynamic>? messages,
    Pc? pc,
    FareRuleInformation? fareRuleInformation,
  }) {
    return TotalPriceList(
      fd: fd ?? this.fd,
      fareIdentifier: fareIdentifier ?? this.fareIdentifier,
      id: id ?? this.id,
      messages: messages ?? this.messages,
      pc: pc ?? this.pc,
      fareRuleInformation: fareRuleInformation ?? this.fareRuleInformation,
    );
  }
}
