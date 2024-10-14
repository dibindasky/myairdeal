class PaxInfo {
  int? adult;
  int? child;
  int? infant;

  PaxInfo({this.adult, this.child, this.infant});

  factory PaxInfo.fromJson(Map<String, dynamic> json) {
    return PaxInfo(
      adult: json['ADULT'] as int?,
      child: json['CHILD'] as int?,
      infant: json['INFANT'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ADULT': '$adult',
      'CHILD': '$child',
      'INFANT': '$infant',
    };
  }

  PaxInfo copyWith({
    int? adult,
    int? child,
    int? infant,
  }) {
    return PaxInfo(
      adult: adult ?? this.adult,
      child: child ?? this.child,
      infant: infant ?? this.infant,
    );
  }
}
