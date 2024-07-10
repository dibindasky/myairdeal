import 'package:json_annotation/json_annotation.dart';

part 'gst.g.dart';

@JsonSerializable()
class Gst {
  bool? gstappl;
  bool? igm;

  Gst({this.gstappl, this.igm});

  factory Gst.fromJson(Map<String, dynamic> json) => _$GstFromJson(json);

  Map<String, dynamic> toJson() => _$GstToJson(this);

  Gst copyWith({
    bool? gstappl,
    bool? igm,
  }) {
    return Gst(
      gstappl: gstappl ?? this.gstappl,
      igm: igm ?? this.igm,
    );
  }
}
