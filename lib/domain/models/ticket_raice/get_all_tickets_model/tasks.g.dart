// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tasks _$TasksFromJson(Map<String, dynamic> json) => Tasks(
      id: json['_id'] as String?,
      bookingId: json['bookingId'] as String?,
      userId: json['userId'] as String?,
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      images: json['images'] as List<dynamic>?,
      product: json['product'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TasksToJson(Tasks instance) => <String, dynamic>{
      '_id': instance.id,
      'bookingId': instance.bookingId,
      'userId': instance.userId,
      'heading': instance.heading,
      'description': instance.description,
      'images': instance.images,
      'product': instance.product,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
