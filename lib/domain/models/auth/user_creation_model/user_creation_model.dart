import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/auth/login_model/country.dart';

part 'user_creation_model.g.dart';

@JsonSerializable()
class UserCreationModel {
  String? firstName;
  String? lastName;
  String? email;
  Country? country;

  UserCreationModel({
    this.firstName,
    this.lastName,
    this.email,
    this.country,
  });

  factory UserCreationModel.fromJson(Map<String, dynamic> json) {
    return _$UserCreationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserCreationModelToJson(this);
}
