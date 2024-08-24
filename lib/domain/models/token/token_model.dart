class TokenModel {
  String token;
  TokenModel({required this.token});

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
