import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  @JsonKey(name: '_id')
  String? id;
  String? notificationType;
  String? title;
  String? body;
  String? booking;
  String? bookingID;
  bool? status;
  String? userId;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Notification({
    this.id,
    this.notificationType,
    this.title,
    this.body,
    this.booking,
    this.status,
    this.userId,
    this.createdAt,
    this.bookingID,
    this.updatedAt,
    this.v,
  });

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}
