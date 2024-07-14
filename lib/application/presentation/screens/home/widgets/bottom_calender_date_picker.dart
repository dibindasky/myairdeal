import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePickingBottomSheet extends StatefulWidget {
  const DatePickingBottomSheet({
    super.key,
    required this.onPressed,
    this.initialDate,
    this.lastDate,
    this.focusedDay,
    this.year = 0,
    this.last = 0,
  });

  final void Function(DateTime) onPressed;
  final int year;
  final int last;
  final DateTime? initialDate;
  final DateTime? lastDate;
  // focus date should be in between the active date
  final DateTime? focusedDay;

  @override
  State<DatePickingBottomSheet> createState() => _DatePickingBottomSheetState();
}

class _DatePickingBottomSheetState extends State<DatePickingBottomSheet> {
  DateTime initialDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  @override
  void initState() {
    initialDate = widget.initialDate ?? initialDate;
    _focusedDay = widget.focusedDay ?? _focusedDay;

    super.initState();
  }

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;
  Map<DateTime, String> prices = {
    // DateTime.utc(2024, 7, 1): '₹3500',
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 500.h,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Date',
                  style: textHeadStyle1,
                ),
              ],
            ),
          ),
          TableCalendar(
                firstDay: widget.initialDate ?? DateTime.now(),
                lastDay: widget.lastDate ??
                    DateTime.now().add(const Duration(days: 31 * 6)),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                calendarBuilders: CalendarBuilders(
                  defaultBuilder: (context, day, focusedDay) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${day.day}',
                          style: const TextStyle(color: kBlack),
                        ),
                        if (prices.containsKey(day))
                          Text(
                            prices[day]!,
                            style:
                                TextStyle(color: kBluePrimary, fontSize: 9.sp),
                          ),
                      ],
                    );
                  },
                ),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                  widget.onPressed(_selectedDay!);
                  Timer(const Duration(microseconds: 300), () {
                    Navigator.of(context).pop();
                  });
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
                calendarStyle: CalendarStyle(
                  // Customize here
                  todayDecoration: const BoxDecoration(
                    color: kBluePrimary,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: const BoxDecoration(
                    color: kRed,
                    shape: BoxShape.circle,
                  ),
                  weekendTextStyle: const TextStyle().copyWith(color: kRed),
                  holidayTextStyle:
                      const TextStyle().copyWith(color: kBluePrimary),
                ),
                headerStyle: const HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  leftChevronIcon: Icon(Icons.chevron_left, color: Colors.blue),
                  rightChevronIcon:
                      Icon(Icons.chevron_right, color: Colors.blue),
                ),
              ),
        ],
      ),
    );
  }
}
