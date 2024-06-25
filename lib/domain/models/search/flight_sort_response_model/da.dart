import 'package:json_annotation/json_annotation.dart';

part 'da.g.dart';

@JsonSerializable()
class Da {
  String? code;
  String? name;
  String? cityCode;
  String? city;
  String? country;
  String? countryCode;
  String? terminal;

  Da({
    this.code,
    this.name,
    this.cityCode,
    this.city,
    this.country,
    this.countryCode,
    this.terminal,
  });

  factory Da.fromJson(Map<String, dynamic> json) => _$DaFromJson(json);

  Map<String, dynamic> toJson() => _$DaToJson(this);

  Da copyWith({
    String? code,
    String? name,
    String? cityCode,
    String? city,
    String? country,
    String? countryCode,
    String? terminal,
  }) {
    return Da(
      code: code ?? this.code,
      name: name ?? this.name,
      cityCode: cityCode ?? this.cityCode,
      city: city ?? this.city,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      terminal: terminal ?? this.terminal,
    );
  }
}
