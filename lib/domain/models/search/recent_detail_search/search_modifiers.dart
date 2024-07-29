import 'package:json_annotation/json_annotation.dart';

part 'search_modifiers.g.dart';

@JsonSerializable()
class SearchModifiers {
  String? pft;
  bool? isDirectFlight;
  bool? isConnectingFlight;

  SearchModifiers({this.pft, this.isDirectFlight, this.isConnectingFlight});

  factory SearchModifiers.fromJson(Map<String, dynamic> json) {
    return _$SearchModifiersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModifiersToJson(this);
}
