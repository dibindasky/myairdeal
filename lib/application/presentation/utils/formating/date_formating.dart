import 'package:intl/intl.dart';

class DateFormating {
// will return date as String type
  static String getDate(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('MMM d, yyyy').format(dateTime);
  }

// will return date as String type  yyyy-mm-dd
  static String getDateApi(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

// will return week day
  static String getWeekDay(int day) {
    switch (day) {
      case DateTime.monday:
        return 'MON';
      case DateTime.tuesday:
        return 'TUE';
      case DateTime.wednesday:
        return 'WED';
      case DateTime.thursday:
        return 'THU';
      case DateTime.friday:
        return 'FRI';
      case DateTime.saturday:
        return 'SAT';
      case DateTime.sunday:
        return 'SUN';
      default:
        return '';
    }
  }
}
