// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pnr_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PnrDetails _$PnrDetailsFromJson(Map<String, dynamic> json) => PnrDetails(
      xnbAuh: json['XNB-AUH'] as String?,
      auhBlr: json['AUH-BLR'] as String?,
      blrHyd: json['BLR-HYD'] as String?,
    );

Map<String, dynamic> _$PnrDetailsToJson(PnrDetails instance) =>
    <String, dynamic>{
      'XNB-AUH': instance.xnbAuh,
      'AUH-BLR': instance.auhBlr,
      'BLR-HYD': instance.blrHyd,
    };
