bool isAlphabet(String input) {
  final alphabetsRegex = RegExp(r'^[a-zA-Z]+$');
  return alphabetsRegex.hasMatch(input);
}

bool isValidAge(String input) {
  final ageRegex = RegExp(r'^[1-9][0-9]{0,2}$');
  return ageRegex.hasMatch(input);
}

bool isValidPhoneNumber(String input) {
  final phoneNumberRegex = RegExp(r'\b\d{10}\b');
  return phoneNumberRegex.hasMatch(input);
}

// Regular expression for password validation
bool isValidPassword(String value) {
  final passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  return passwordRegExp.hasMatch(value);
}

// Regular expression for email validation
bool isValidEmail(String value) {
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{1,10}$');
  return emailRegExp.hasMatch(value);
}

bool isValidName(String input) {
  final nameRegex = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)?$');
  return nameRegex.hasMatch(input);
}

bool isValidWebsite(String input) {
  final urlRegex =
      RegExp(r'^(?:www\.)?[a-zA-Z0-9-]+(?:\.[a-zA-Z]{2,})+(?:\/[^\s]*)?$');
  return urlRegex.hasMatch(input);
}

bool isURLValid(String url) {
  const urlPattern =
      r"^((https?|ftp|ftps)://)?(([a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\.)+[a-zA-Z]{2,6}|localhost)(:[0-9]+)?(/([a-zA-Z0-9/\._-]+)*(\?[a-zA-Z0-9=\&._-]+)?)?(#[a-zA-Z0-9\-_]+)?$";
  return RegExp(urlPattern).hasMatch(url);
}

bool hasCapsLetter(String input) {
  final hasCapitalRegExp = RegExp(r'[A-Z]');
  return hasCapitalRegExp.hasMatch(input);
}

bool hasLowerCase(String input) {
  final hasSmallRegExp = RegExp(r'[a-z]');
  return hasSmallRegExp.hasMatch(input);
}

bool hasNumbers(String input) {
  final hasNumbersRegExp = RegExp(r'\d+');
  return hasNumbersRegExp.hasMatch(input);
}

bool hasSpecialChar(String input) {
  final hasSpecialCharsRegExp = RegExp(r'[^\w\s]');
  return hasSpecialCharsRegExp.hasMatch(input);
}

bool isValidIFSC(String input) {
  final hasRegExp = RegExp(r'^[A-Z]{4}0[A-Z0-9]{6}$');
  return hasRegExp.hasMatch(input);
}

bool isValidUpiId(String input) {
  final hasRegExp = RegExp(r'^[a-zA-Z0-9.\-]{2,256}@[a-zA-Z]{2,64}$');
  return hasRegExp.hasMatch(input);
}

bool isValidGst(String input) {
  final hasRegExp =
      RegExp(r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$');
  return hasRegExp.hasMatch(input);
}

bool isValidIndianPassportNumber(String passportNumber) {
  final regex = RegExp(r'^[A-Z][1-9][0-9][A-Z0-9]{5}$');
  return regex.hasMatch(passportNumber);
}
