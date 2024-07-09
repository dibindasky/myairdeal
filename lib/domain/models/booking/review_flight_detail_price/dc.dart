import 'package:json_annotation/json_annotation.dart';

part 'dc.g.dart';

@JsonSerializable()
class Dc {
  bool? ida;
  bool? idm;

  Dc({this.ida, this.idm});

  factory Dc.fromJson(Map<String, dynamic> json) => _$DcFromJson(json);

  Map<String, dynamic> toJson() => _$DcToJson(this);

  Dc copyWith({
    bool? ida,
    bool? idm,
  }) {
    return Dc(
      ida: ida ?? this.ida,
      idm: idm ?? this.idm,
    );
  }
}
