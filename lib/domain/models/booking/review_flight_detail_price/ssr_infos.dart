import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';

part 'ssr_infos.g.dart';

@JsonSerializable()
class SsrInfos {
  @JsonKey(name: 'MEAL')
  List<SsrInfo>? meal;
  @JsonKey(name: 'BAGGAGE')
  List<SsrInfo>? baggage;

  SsrInfos({this.meal,this.baggage});

  factory SsrInfos.fromJson(Map<String, dynamic> json) {
    return _$SsrInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SsrInfoToJson(this);

  SsrInfos copyWith({
    List<SsrInfo>? meal,
    List<SsrInfo>? baggage,
  }) {
    return SsrInfos(
      meal: meal ?? this.meal,
      baggage: baggage ?? this.baggage,
    );
  }
}
