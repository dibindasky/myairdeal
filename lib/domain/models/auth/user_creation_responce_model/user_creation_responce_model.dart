import 'package:json_annotation/json_annotation.dart';

import 'country.dart';
import 'saved_passenger.dart';

part 'user_creation_responce_model.g.dart';

@JsonSerializable()
class UserCreationResponceModel {
  Country? country;
  @JsonKey(name: '_id')
  String? id;
  String? email;
  String? phone;
  String? addPhone;
  String? status;
  String? otp;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<SavedPassenger>? savedPassengers;
  String? firstName;
  String? lastName;

  UserCreationResponceModel({
    this.country,
    this.id,
    this.email,
    this.phone,
    this.addPhone,
    this.status,
    this.otp,
    this.createdAt,
    this.updatedAt,
    this.savedPassengers,
    this.firstName,
    this.lastName,
  });

  factory UserCreationResponceModel.fromJson(Map<String, dynamic> json) {
    return _$UserCreationResponceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserCreationResponceModelToJson(this);
}
