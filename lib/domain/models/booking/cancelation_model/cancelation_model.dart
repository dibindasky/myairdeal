import 'package:json_annotation/json_annotation.dart';

part 'cancelation_model.g.dart';

@JsonSerializable()
class CancelationModel {
  String? bookingId;
  String? type;

  CancelationModel({this.bookingId, this.type});

  factory CancelationModel.fromJson(Map<String, dynamic> json) {
    return _$CancelationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CancelationModelToJson(this);
}
