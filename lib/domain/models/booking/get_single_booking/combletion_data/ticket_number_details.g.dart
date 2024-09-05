// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_number_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketNumberDetails _$TicketNumberDetailsFromJson(Map<String, dynamic> json) =>
    TicketNumberDetails(
      xnbAuh: json['XNB-AUH'] as String?,
      auhBlr: json['AUH-BLR'] as String?,
      blrHyd: json['BLR-HYD'] as String?,
    );

Map<String, dynamic> _$TicketNumberDetailsToJson(
        TicketNumberDetails instance) =>
    <String, dynamic>{
      'XNB-AUH': instance.xnbAuh,
      'AUH-BLR': instance.auhBlr,
      'BLR-HYD': instance.blrHyd,
    };
