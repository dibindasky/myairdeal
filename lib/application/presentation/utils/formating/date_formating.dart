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

  // will return time as hh:mm a if pass a formatted date string
  static String formatTime(String date) {
    if (date == '') return '';
    DateTime dateTime = DateTime.parse(date);
    final DateFormat formatter = DateFormat('hh:mm a');
    return formatter.format(dateTime);
  }

  static String convertMinutesToHoursMinutes(int totalMinutes) {
    int days = totalMinutes ~/ 1440;
    int hours = (totalMinutes % 1440) ~/ 60;
    int minutes = totalMinutes % 60;

    String formattedTime = '';
    if (days > 0) {
      formattedTime += '${days}d ';
    }
    formattedTime +=
        '${hours.toString().padLeft(2, '0')}h ${minutes.toString().padLeft(2, '0')}m';

    return formattedTime;
  }

  static String getDifferenceOfDates(
      String dateTimeString1, String dateTimeString2) {
    DateTime dateTime1 = DateTime.parse(dateTimeString1);
    DateTime dateTime2 = DateTime.parse(dateTimeString2);

    Duration difference = dateTime2.difference(dateTime1);

    int days = difference.inDays;
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;

    String formattedDifference = '';
    if (days > 0) {
      formattedDifference += '$days day${days > 1 ? 's' : ''} ';
    }
    if (hours > 0) {
      formattedDifference += '${hours.toString().padLeft(2, '0')}hr ';
    }
    if (minutes > 0) {
      formattedDifference += '${minutes.toString().padLeft(2, '0')}m';
    }
    return formattedDifference.trim();
  }

  static int getTotalDifferenceInMinutes(
      String dateTimeString1, String dateTimeString2) {
    DateTime dateTime1 = DateTime.parse(dateTimeString1);
    DateTime dateTime2 = DateTime.parse(dateTimeString2);

    Duration difference = dateTime2.difference(dateTime1);

    return difference.inMinutes;
  }
}
