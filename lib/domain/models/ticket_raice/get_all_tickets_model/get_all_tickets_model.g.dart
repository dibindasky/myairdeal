part of 'get_all_tickets_model.dart';

GetAllTicketsModel _$GetAllTicketsModelFromJson(Map<String, dynamic> json) {
  return GetAllTicketsModel(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Tasks.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GetAllTicketsModelToJson(GetAllTicketsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
