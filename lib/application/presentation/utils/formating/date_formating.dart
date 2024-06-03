import 'package:intl/intl.dart';

class DateFormating {
  static String getDate(DateTime dateTime) {
    return DateFormat('MMM d, yyyy').format(dateTime);
  }
}
