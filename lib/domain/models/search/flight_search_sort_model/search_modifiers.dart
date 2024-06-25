import 'package:json_annotation/json_annotation.dart';

part 'search_modifiers.g.dart';

@JsonSerializable()
class SearchModifiers {
  String? pft;
  @JsonKey(name: 'isDirectFlight')
  bool? isDirectFlight;
  @JsonKey(name: 'isConnectingFlight')
  bool? isConnectingFlight;

  SearchModifiers({this.isDirectFlight, this.isConnectingFlight, this.pft});

  factory SearchModifiers.fromJson(Map<String, dynamic> json) {
    return _$SearchModifiersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModifiersToJson(this);

  SearchModifiers copyWith({
    String? pft,
    bool? isDirectFlight,
    bool? isConnectingFlight,
  }) {
    return SearchModifiers(
      pft: pft ?? this.pft,
      isDirectFlight: isDirectFlight ?? this.isDirectFlight,
      isConnectingFlight: isConnectingFlight ?? this.isConnectingFlight,
    );
  }
}
