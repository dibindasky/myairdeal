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

  TotalPriceList({
    this.fd,
    this.fareIdentifier,
    this.id,
    this.msri,
    this.sri,
    this.messages,
    this.icca,
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
  }) {
    return TotalPriceList(
      fd: fd ?? this.fd,
      fareIdentifier: fareIdentifier ?? this.fareIdentifier,
      id: id ?? this.id,
      msri: msri ?? this.msri,
      sri: sri ?? this.sri,
      messages: messages ?? this.messages,
      icca: icca ?? this.icca,
    );
  }
}
