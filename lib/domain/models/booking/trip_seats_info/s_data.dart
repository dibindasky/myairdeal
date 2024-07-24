import 'package:json_annotation/json_annotation.dart';

part 's_data.g.dart';

@JsonSerializable()
class SData {
  int? row;
  int? column;

  SData({this.row, this.column});

  factory SData.fromJson(Map<String, dynamic> json) => _$SDataFromJson(json);

  Map<String, dynamic> toJson() => _$SDataToJson(this);

  SData copyWith({
    int? row,
    int? column,
  }) {
    return SData(
      row: row ?? this.row,
      column: column ?? this.column,
    );
  }
}
