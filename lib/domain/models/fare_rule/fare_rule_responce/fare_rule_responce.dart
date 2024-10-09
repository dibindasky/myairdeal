class FareRuleResponce {
  Map<String, dynamic>? fareRule;

  FareRuleResponce({this.fareRule});

  factory FareRuleResponce.fromJson(Map<String, dynamic> json) {
    return FareRuleResponce(
      fareRule: json['fareRule'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fareRule': fareRule,
    };
  }
}
