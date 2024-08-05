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