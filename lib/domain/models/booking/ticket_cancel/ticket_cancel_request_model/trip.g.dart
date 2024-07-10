// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      src: json['src'] as String?,
      dest: json['dest'] as String?,
      departureDate: json['departureDate'] as String?,
      travellers: (json['travellers'] as List<dynamic>?)
          ?.map((e) => Traveller.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'src': instance.src,
      'dest': instance.dest,
      'departureDate': instance.departureDate,
      'travellers': instance.travellers,
    };
