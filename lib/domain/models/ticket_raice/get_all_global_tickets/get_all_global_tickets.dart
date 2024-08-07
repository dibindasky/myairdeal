import 'package:json_annotation/json_annotation.dart';

part 'get_all_global_tickets.g.dart';

@JsonSerializable()
class GetAllGlobalTickets {
  @JsonKey(name: '_id')
  String? id;
  String? type;
  String? bookingId;
  String? userId;
  String? heading;
  String? description;
  String? product;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  GetAllGlobalTickets(
      {this.id,
      this.type,
      this.bookingId,
      this.userId,
      this.heading,
      this.description,
      this.product,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory GetAllGlobalTickets.fromJson(Map<String, dynamic> json) {
    return _$GetAllGlobalTicketsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllGlobalTicketsToJson(this);
}
