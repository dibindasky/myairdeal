// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModifiers _$SearchModifiersFromJson(Map<String, dynamic> json) =>
    SearchModifiers(
      pft: json['pft'] as String?,
      isDirectFlight: json['isDirectFlight'] as bool?,
      isConnectingFlight: json['isConnectingFlight'] as bool?,
    );

Map<String, dynamic> _$SearchModifiersToJson(SearchModifiers instance) =>
    <String, dynamic>{
      'pft': instance.pft,
      'isDirectFlight': instance.isDirectFlight,
      'isConnectingFlight': instance.isConnectingFlight,
    };
