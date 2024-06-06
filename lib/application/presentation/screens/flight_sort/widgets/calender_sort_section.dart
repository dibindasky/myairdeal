import 'dart:developer';

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CalenderSectionSortHeader extends StatelessWidget {
  const CalenderSectionSortHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // alignment: Alignment.bottomCenter,
      top: 140.h,
      child: SizedBox(
        // height: 50.h,
        width: MediaQuery.of(context).size.width,
        child: EasyDateTimeLine(
          dayProps: EasyDayProps(
            disabledDayStyle: DayStyle(
                decoration: BoxDecoration(
                  color: kGrey,
                  borderRadius: kRadius15,
                ),
                dayNumStyle: textHeadStyle1,
                monthStrStyle: textStyle1,
                dayStrStyle: textThinStyle1),
            todayStyle: DayStyle(
                decoration:
                    BoxDecoration(borderRadius: kRadius15, color: kGrey),
                dayNumStyle: textHeadStyle1,
                monthStrStyle: textStyle1,
                dayStrStyle: textThinStyle1),
            todayHighlightColor: kWhite,
            activeDayStyle: DayStyle(
                decoration: BoxDecoration(
                  color: kBluePrimary,
                  borderRadius: kRadius15,
                  border: Border.all(color: kBluePrimary),
                ),
                dayNumStyle: textHeadStyle1.copyWith(color: kWhite),
                monthStrStyle: textStyle1.copyWith(color: kWhite),
                dayStrStyle: textThinStyle1.copyWith(color: kWhite)),
            inactiveDayStyle: DayStyle(
                decoration: BoxDecoration(
                  color: kGrey,
                  borderRadius: kRadius15,
                ),
                dayNumStyle: textHeadStyle1,
                monthStrStyle: textStyle1,
                dayStrStyle: textThinStyle1),
          ),
          timeLineProps: const EasyTimeLineProps(
            vPadding: 20,
            hPadding: 10,
          ),
          headerProps: const EasyHeaderProps(
            showSelectedDate: false,
            showHeader: false,
          ),
          activeColor: kBluePrimary,
          initialDate: DateTime.now(),
          itemBuilder: (context, date, isSelected, onTap) => Container(
            height: 70.h,
            width: 60.w,
            color: kRed,
          ),
          // itemBuilder: (context, date, isSelected, onTap) => ,
          onDateChange: (selectedDate) {
            log(selectedDate.toString());
          },
        ),
      ),
    );
  }
}
