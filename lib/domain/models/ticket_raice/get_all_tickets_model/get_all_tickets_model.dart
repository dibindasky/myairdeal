import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/tasks.dart';

part 'get_all_tickets_model.g.dart';

@JsonSerializable()
class GetAllTicketsModel {
  List<Tasks>? data;

  GetAllTicketsModel({this.data});

  factory GetAllTicketsModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllTicketsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllTicketsModelToJson(this);
}
