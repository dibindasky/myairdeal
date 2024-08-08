import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

void showSnackbar(
  BuildContext context, {
  required String message,
  Color backgroundColor = kBluePrimary,
  int duration = 2,
  Color textColor = kBlack,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    elevation: 5,
    content: Text(
      getFirstCapital(message),
      style: textThinStyle1.copyWith(color: textColor),
    ),
    backgroundColor: backgroundColor,
    duration: Duration(seconds: duration),
  ));
}

String getFirstCapital(String message) {
  if (message.isEmpty) return '';
  return message.replaceRange(0, 1, message[0].toUpperCase());
}
