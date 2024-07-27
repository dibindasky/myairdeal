// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModifiers _$SearchModifiersFromJson(Map<String, dynamic> json) =>
    SearchModifiers(
      pft: json['pft'] as String?,
      pfts: (json['pfts'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchModifiersToJson(SearchModifiers instance) =>
    <String, dynamic>{
      'pft': instance.pft,
      'pfts': instance.pfts,
    };
