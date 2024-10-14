import 'package:json_annotation/json_annotation.dart';

import 'fd_price.dart';

part 'total_price_list.g.dart';

@JsonSerializable()
class TotalPriceList {
  FdPrice? fd;
  String? fareIdentifier;
  String? id;
  String? sri;
  List<dynamic>? msri;
  List<dynamic>? messages;
  bool? icca;
  String? searchAirlineId;

  TotalPriceList({
    this.fd,
    this.fareIdentifier,
    this.id,
    this.msri,
    this.sri,
    this.messages,
    this.icca,
    this.searchAirlineId,
  });

  factory TotalPriceList.fromJson(Map<String, dynamic> json) {
    return _$TotalPriceListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalPriceListToJson(this);

  TotalPriceList copyWith({
    FdPrice? fd,
    String? fareIdentifier,
    String? id,
    String? sri,
    List<dynamic>? msri,
    List<dynamic>? messages,
    bool? icca,
    String? searchAirlineId,
  }) {
    return TotalPriceList(
      fd: fd ?? this.fd,
      fareIdentifier: fareIdentifier ?? this.fareIdentifier,
      id: id ?? this.id,
      msri: msri ?? this.msri,
      sri: sri ?? this.sri,
      messages: messages ?? this.messages,
      icca: icca ?? this.icca,
      searchAirlineId: searchAirlineId ?? this.searchAirlineId,
    );
  }

  static const colSearchAirlineId = 'search_airline_id';
  static const colLocalId = 'local_id';
  static const colFD = 'fd';
  static const colFareIdentifier = 'fareIdentifier';
  static const colId = 'id';
  static const colSri = 'sri';
  static const colMsri = 'msri';
  static const colMessages = 'messages';
  static const colIcca = 'icca';
}
