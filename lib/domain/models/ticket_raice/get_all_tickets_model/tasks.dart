import 'package:json_annotation/json_annotation.dart';

part 'tasks.g.dart';

@JsonSerializable()
class Tasks {
  @JsonKey(name: '_id')
  String? id;
  String? bookingId;
  String? userId;
  String? heading;
  String? description;
  List<dynamic>? images;
  String? product;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Tasks({
    this.id,
    this.bookingId,
    this.userId,
    this.heading,
    this.description,
    this.images,
    this.product,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Tasks.fromJson(Map<String, dynamic> json) => _$TasksFromJson(json);

  Map<String, dynamic> toJson() => _$TasksToJson(this);
}
