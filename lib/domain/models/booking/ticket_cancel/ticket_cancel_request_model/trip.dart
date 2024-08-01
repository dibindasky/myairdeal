import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/trip_info.dart';

import 'traveller.dart';

part 'trip.g.dart';

@JsonSerializable()
class Trip {
  String? src;
  String? dest;
  String? departureDate;
  List<Traveller>? travellers;

  Trip({this.src, this.dest, this.departureDate, this.travellers});

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);

  static Trip getTrip(TripInfo? tripInfo) {
    return Trip(
      departureDate:
          DateFormating.formatYearMonthDate(tripInfo?.sI?[0].dt ?? ''),
      src: tripInfo?.sI?[0].da?.code,
      dest: tripInfo?.sI?[(tripInfo.sI?.length ?? 1) - 1].aa?.code,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Trip &&
        other.src == src &&
        other.dest == dest &&
        other.departureDate == departureDate &&
        _listEquals(other.travellers, travellers);
  }

  @override
  int get hashCode =>
      src.hashCode ^
      dest.hashCode ^
      departureDate.hashCode ^
      travellers.hashCode;

  bool _listEquals(List<Traveller>? list1, List<Traveller>? list2) {
    if (list1 == null && list2 == null) return true;
    if (list1 == null || list2 == null) return false;
    if (list1.length != list2.length) return false;
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) return false;
    }
    return true;
  }

  Trip copyWith({
    String? src,
    String? dest,
    String? departureDate,
    List<Traveller>? travellers,
  }) {
    return Trip(
      src: src ?? this.src,
      dest: dest ?? this.dest,
      departureDate: departureDate ?? this.departureDate,
      travellers: travellers ?? this.travellers,
    );
  }
}
