import 'package:json_annotation/json_annotation.dart';

part 'search_modifiers.g.dart';

@JsonSerializable()
class SearchModifiers {
  String? pft;
  List<String>? pfts;

  SearchModifiers({this.pft, this.pfts});

  factory SearchModifiers.fromJson(Map<String, dynamic> json) {
    return _$SearchModifiersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModifiersToJson(this);

  SearchModifiers copyWith({
    String? pft,
    List<String>? pfts,
  }) {
    return SearchModifiers(
      pft: pft ?? this.pft,
      pfts: pfts ?? this.pfts,
    );
  }
}
