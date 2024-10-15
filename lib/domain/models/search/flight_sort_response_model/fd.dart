import 'package:json_annotation/json_annotation.dart';

import 'ai.dart';

part 'fd.g.dart';

@JsonSerializable()
class FD {
  AI? aI;
  String? fN;
  String? eT;

  FD({this.aI, this.fN, this.eT});

  factory FD.fromJson(Map<String, dynamic> json) => _$FDFromJson(json);

  Map<String, dynamic> toJson() => _$FDToJson(this);

  FD copyWith({
    AI? aI,
    String? fN,
    String? eT,
  }) {
    return FD(
      aI: aI ?? this.aI,
      fN: fN ?? this.fN,
      eT: eT ?? this.eT,
    );
  }

  static const colLocalId = 'local_id';
  static const colSiId = 'segment_info_id';
  static const colAIName = 'aI_name';
  static const colAICode = 'aI_code';
  static const colAIIsLcc = 'aI_islcc';
  static const colfN = 'fN';
  static const coleT = 'eT';
}
