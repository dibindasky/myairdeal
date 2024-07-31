import 'package:json_annotation/json_annotation.dart';

import 'dc.dart';
import 'dob.dart';
import 'gst.dart';
import 'pcs.dart';

part 'conditions.g.dart';

@JsonSerializable()
class Conditions {
  List<String>? ffas;
  bool? isa;
  Dob? dob;
  bool? iecr;
  Dc? dc;
  bool? ipa;
  @JsonKey(name: 'isBA')
  bool? isBa;
  int? st;
  String? sct;
  Gst? gst;
  Pcs? pcs;

  Conditions({
    this.ffas,
    this.isa,
    this.dob,
    this.iecr,
    this.dc,
    this.ipa,
    this.isBa,
    this.st,
    this.sct,
    this.gst,
    this.pcs
  });

  factory Conditions.fromJson(Map<String, dynamic> json) {
    return _$ConditionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConditionsToJson(this);

  Conditions copyWith({
    List<String>? ffas,
    bool? isa,
    Dob? dob,
    bool? iecr,
    Dc? dc,
    bool? ipa,
    bool? isBa,
    int? st,
    String? sct,
    Gst? gst,
    Pcs? pcs,
  }) {
    return Conditions(
      ffas: ffas ?? this.ffas,
      isa: isa ?? this.isa,
      dob: dob ?? this.dob,
      iecr: iecr ?? this.iecr,
      dc: dc ?? this.dc,
      ipa: ipa ?? this.ipa,
      isBa: isBa ?? this.isBa,
      st: st ?? this.st,
      sct: sct ?? this.sct,
      gst: gst ?? this.gst,
      pcs: pcs ?? this.pcs,
    );
  }
}
