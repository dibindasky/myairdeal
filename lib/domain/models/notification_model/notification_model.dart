import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  int? totalRows;
  @JsonKey(name: 'data')
  List<Notification>? notification;

  NotificationModel({this.totalRows, this.notification});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return _$NotificationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
