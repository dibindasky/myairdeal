// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_tickets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTicketsModel _$GetAllTicketsModelFromJson(Map<String, dynamic> json) =>
    GetAllTicketsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Tasks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllTicketsModelToJson(GetAllTicketsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
