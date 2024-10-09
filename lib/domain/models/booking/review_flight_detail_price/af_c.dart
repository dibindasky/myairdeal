import 'taf.dart';

class AfC {
  Taf? taf;
  Map<String, dynamic>? tafMAP;

  AfC({this.taf, this.tafMAP});

  factory AfC.fromJson(Map<String, dynamic> json) {
    return AfC(
      taf: json['TAF'] != null ? Taf.fromJson(json['TAF']) : null,
      tafMAP: json['TAF'] is Map<String, dynamic>
          ? Map<String, dynamic>.from(json['TAF'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TAF': taf?.toJson(),
      // 'TAF': tafMAP,
    };
  }

  AfC copyWith({
    Taf? taf,
    Map<String, dynamic>? tafMAP,
  }) {
    return AfC(
      taf: taf ?? this.taf,
      tafMAP: tafMAP ?? this.tafMAP,
    );
  }
}
