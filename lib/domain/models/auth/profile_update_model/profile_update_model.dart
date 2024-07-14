import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/auth/login_model/country.dart';

part 'profile_update_model.g.dart';

@JsonSerializable()
class ProfileUpdateModel {
  String? firstName;
  String? lastName;
  String? email;
  Country? country;

  ProfileUpdateModel({
    this.firstName,
    this.lastName,
    this.email,
    this.country,
  });

  factory ProfileUpdateModel.fromJson(Map<String, dynamic> json) {
    return _$ProfileUpdateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileUpdateModelToJson(this);
}
