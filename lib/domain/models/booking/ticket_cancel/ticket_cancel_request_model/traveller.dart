import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/traveller_info.dart';

part 'traveller.g.dart';

@JsonSerializable()
class Traveller {
  String? fn;
  String? ln;

  Traveller({this.fn, this.ln});

  factory Traveller.fromJson(Map<String, dynamic> json) {
    return _$TravellerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TravellerToJson(this);

  //For identifying diffrent traveler objects
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Traveller && other.fn == fn && other.ln == ln;
  }

  @override
  int get hashCode => fn.hashCode ^ ln.hashCode;

  static Traveller getTraveler(TravellerInfo tra) {
    return Traveller(fn: tra.fN, ln: tra.lN);
  }
}
