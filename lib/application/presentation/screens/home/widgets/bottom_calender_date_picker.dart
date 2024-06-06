import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePickingBottomSheet extends StatefulWidget {
  const DatePickingBottomSheet({
    super.key,
    required this.onPressed,
    this.initialDate,
    this.year = 0,
    this.last = 0,
  });

  final void Function(DateTime) onPressed;
  final int year;
  final int last;
  final DateTime? initialDate;

  @override
  State<DatePickingBottomSheet> createState() => _DatePickingBottomSheetState();
}

class _DatePickingBottomSheetState extends State<DatePickingBottomSheet> {
  DateTime initialDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    initialDate = widget.initialDate ?? initialDate;
    super.initState();
  }

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, String> prices = {
    DateTime.utc(2024, 6, 1): '₹3500',
    DateTime.utc(2024, 6, 2): '₹3500',
    DateTime.utc(2024, 6, 3): '₹3500',
    DateTime.utc(2024, 6, 4): '₹3500',
    DateTime.utc(2024, 6, 5): '₹3500',
    DateTime.utc(2024, 6, 6): '₹3500',
    DateTime.utc(2024, 6, 7): '₹3500',
    DateTime.utc(2024, 6, 8): '₹3500',
    DateTime.utc(2024, 6, 9): '₹3500',
    DateTime.utc(2024, 6, 10): '₹3500',
    DateTime.utc(2024, 6, 11): '₹3500',
    DateTime.utc(2024, 6, 12): '₹3500',
    DateTime.utc(2024, 6, 13): '₹3500',
    DateTime.utc(2024, 6, 14): '₹3500',
    DateTime.utc(2024, 6, 15): '₹3500',
    DateTime.utc(2024, 6, 16): '₹3500',
    DateTime.utc(2024, 6, 17): '₹3500',
    DateTime.utc(2024, 6, 18): '₹3500',
    DateTime.utc(2024, 6, 19): '₹3500',
    DateTime.utc(2024, 6, 20): '₹3500',
    DateTime.utc(2024, 6, 21): '₹3500',
    DateTime.utc(2024, 6, 22): '₹3500',
    DateTime.utc(2024, 6, 23): '₹3500',
    DateTime.utc(2024, 6, 24): '₹3500',
    DateTime.utc(2024, 6, 25): '₹3500',
    DateTime.utc(2024, 6, 26): '₹3500',
    DateTime.utc(2024, 6, 27): '₹3500',
    DateTime.utc(2024, 6, 28): '₹3500',
    DateTime.utc(2024, 6, 29): '₹3500',
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
          Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2024, 6, 1),
                lastDay: DateTime.utc(2024, 12, 30),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: EventButton(
                    text: 'Continue',
                    width: double.infinity,
                    onTap: () {
                      Get.back();
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
