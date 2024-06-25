import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  bool? success;
  int? httpStatus;

  Status({this.success, this.httpStatus});

  factory Status.fromJson(Map<String, dynamic> json) {
    return _$StatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  Status copyWith({
    bool? success,
    int? httpStatus,
  }) {
    return Status(
      success: success ?? this.success,
      httpStatus: httpStatus ?? this.httpStatus,
    );
  }
}
