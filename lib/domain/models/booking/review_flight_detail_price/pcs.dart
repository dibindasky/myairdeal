import 'package:json_annotation/json_annotation.dart';

part 'pcs.g.dart';

@JsonSerializable()
class Pcs {
  bool? pped;
  bool? pid;
  bool? pm;
  bool? dobe;

  Pcs({
     this.pped,
     this.pid,
     this.pm,
     this.dobe,
  });

  factory Pcs.fromJson(Map<String, dynamic> json) => _$PcsFromJson(json);

  Map<String, dynamic> toJson() => _$PcsToJson(this);
}
