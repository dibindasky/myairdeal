import 'package:flutter/services.dart';

class AlphabeticInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final RegExp regex = RegExp(r'^[a-zA-Z]+$');
    if (newValue.text.isEmpty || regex.hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }
}

class NumericInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // This regex allows only numeric input
    final RegExp regex = RegExp(r'^\d+$');
    if (newValue.text.isEmpty || regex.hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }
}

String capitalizeFirstLetter(String input) {
  if (input.isEmpty) {
    return input;
  }
  return input[0].toUpperCase() + input.substring(1).toLowerCase();
}
