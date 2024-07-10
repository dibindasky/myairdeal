import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/status.dart';

import 'error.dart';

part 'errors.g.dart';

@JsonSerializable()
class Errors {
  Status? status;
  List<Error>? errors;

  Errors({this.status, this.errors});

  factory Errors.fromJson(Map<String, dynamic> json) {
    return _$ErrorsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
