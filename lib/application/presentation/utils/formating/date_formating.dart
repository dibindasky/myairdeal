import 'package:intl/intl.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';

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

  // 22/07/7332
  static String getDateByDayMonthYear(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('dd-MM-yyyy').format(dateTime);
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

  // 24 hr format
  static String formatTime24(String date) {
    if (date == '') return '';
    DateTime dateTime = DateTime.parse(date);
    final DateFormat formatter = DateFormat('HH:mm');
    return formatter.format(dateTime);
  }

  // Format to "Jul 18, Thu", "21:00"
  static String formatDate(String date) {
    if (date.isEmpty) return '';
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('MMM d, E').format(dateTime);
    String formattedTime = DateFormat('HH:mm').format(dateTime);
    return '$formattedDate, $formattedTime';
  }

  //July 8 2024
  static String formatDateMonthYear(String date) {
    if (date.isEmpty) return '';
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('MMM d, yyyy').format(dateTime);
    String formattedTime = DateFormat('HH:mm').format(dateTime);
    return '$formattedDate, $formattedTime';
  }

  // 2020-10-12
  static String formatYearMonthDate(String date) {
    if (date.isEmpty) return '';
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
    return formattedDate;
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

  static String convertSecondsToHoursMinutesSeconds(int totalSeconds) {
    int hours = totalSeconds ~/ 3600;
    int minutes = (totalSeconds % 3600) ~/ 60;
    int seconds = totalSeconds % 60;

    String formattedTime =
        '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return formattedTime;
  }

  static String getDurationOfFlights({required List<SI> si}) {
    int minute = 0;
    for (int i = 0; i < si.length; i++) {
      minute += si[i].duration ?? 0;
      if (i < (si.length - 1)) {
        minute += si[i].cT ?? 0;
        // minute += getDifferenceInMinutes(si[i].at ?? '', si[i + 1].dt ?? '');
      }
    }
    final duration = Duration(minutes: minute);
    int days = duration.inDays;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;

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

  static int getDurationOfFlightsInMinutes({required List<SI> si}) {
    int minute = 0;
    for (int i = 0; i < si.length; i++) {
      minute += si[i].duration ?? 0;
      if (i < (si.length - 1)) {
        minute += getDifferenceInMinutes(si[i].at ?? '', si[i + 1].dt ?? '');
      }
    }
    return minute;
  }

  static int getDifferenceInMinutes(
      String dateTimeString1, String dateTimeString2) {
    DateTime dateTime1 = DateTime.parse(dateTimeString1);
    DateTime dateTime2 = DateTime.parse(dateTimeString2);

    Duration difference = dateTime2.difference(dateTime1);
    return difference.inMinutes;
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

  // return DateTime from string yyyy-mm-dd
  static DateTime? convertStringToDateTime(String dateString) {
    try {
      return DateTime.parse(dateString);
    } catch (e) {
      return null;
    }
  }

  // Will return the abbreviated month name
  static String getMonthAbbreviation(int month) {
    switch (month) {
      case 1:
        return 'JAN';
      case 2:
        return 'FEB';
      case 3:
        return 'MAR';
      case 4:
        return 'APR';
      case 5:
        return 'MAY';
      case 6:
        return 'JUN';
      case 7:
        return 'JUL';
      case 8:
        return 'AUG';
      case 9:
        return 'SEP';
      case 10:
        return 'OCT';
      case 11:
        return 'NOV';
      case 12:
        return 'DEC';
      default:
        return '';
    }
  }

  // given time will check wether in the given time slot or not
  // '00:00 to 05:59','06:00 to 11:59','12:00 to 17:59','18:00 to 23:59'
  static bool isTimeWithinSlot(String? dateTimeStr, String timeSlot) {
    if (dateTimeStr == null) return false;
    // Parse the given datetime string
    DateTime dateTime = DateTime.parse(dateTimeStr);

    // Extract the start and end times from the time slot
    List<String> timeRange = timeSlot.split(' to ');
    String startTimeStr = timeRange[0];
    String endTimeStr = timeRange[1];

    // Parse the start and end times into DateTime objects on the same day
    DateTime startTime = DateTime(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        int.parse(startTimeStr.split(':')[0]),
        int.parse(startTimeStr.split(':')[1]));
    DateTime endTime = DateTime(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        int.parse(endTimeStr.split(':')[0]),
        int.parse(endTimeStr.split(':')[1]));

    // Check if the given time falls within the time slot
    return dateTime.isAfter(startTime) && dateTime.isBefore(endTime) ||
        dateTime.isAtSameMomentAs(startTime) ||
        dateTime.isAtSameMomentAs(endTime);
  }

  // check wether the given dob pass 18 or not
  static bool isAdult(String birthDateString) {
    DateTime birthDate = DateTime.parse(birthDateString);
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }
    return age >= 18;
  }
}
