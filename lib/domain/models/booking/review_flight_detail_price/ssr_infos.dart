import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';

class SsrInfos {
  List<SsrInfo>? meal;
  List<SsrInfo>? baggage;

  SsrInfos({this.meal, this.baggage});

  factory SsrInfos.fromJson(Map<String, dynamic> json) {
    return SsrInfos(
      meal: (json['MEAL'] as List<dynamic>?)
          ?.map((item) => SsrInfo.fromJson(item as Map<String, dynamic>))
          .toList(),
      baggage: (json['BAGGAGE'] as List<dynamic>?)
          ?.map((item) => SsrInfo.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'MEAL': meal?.map((item) => item.toJson()).toList(),
      'BAGGAGE': baggage?.map((item) => item.toJson()).toList(),
    };
  }

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
