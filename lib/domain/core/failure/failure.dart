class Failure {
  String? message;
  String? subMessage;
  dynamic data;
  Failure({this.message, this.data, this.subMessage});
}

const String errorMessage = 'Something Went wrong';
