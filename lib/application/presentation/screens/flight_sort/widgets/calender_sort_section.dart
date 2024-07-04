import 'dart:developer';

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class CalenderSectionSortHeader extends StatelessWidget {
  const CalenderSectionSortHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();

    return Positioned(
      top: 140.h,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Obx(() {
          return EasyInfiniteDateTimeLine(
            timeLineProps: const EasyTimeLineProps(
              vPadding: 20,
              hPadding: 5,
            ),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 31)),
            focusDate: controller.selectedDate.value,
            showTimelineHeader: false,
            itemBuilder: (context, date, isSelected, onTap) => GestureDetector(
              onTap: () {
                onTap();
                controller.selctDate(date);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  borderRadius: kRadius15,
                  color: isSelected ? kBluePrimary : kGrey,
                ),
                padding: const EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(
                    vertical: isSelected ? 0 : 5.h,
                    horizontal: isSelected ? 0 : 3.w),
                height: 70.h,
                width: isSelected ? 60.w : 50.w,
                child: FittedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        DateFormating.getWeekDay(date.weekday),
                        style: textThinStyle1.copyWith(
                            color: isSelected ? kWhite : kBlack),
                      ),
                      Text(
                        date.day.toString(),
                        style: textHeadStyle1.copyWith(
                            color: isSelected ? kWhite : kBlack),
                      ),
                      Text(
                        '₹ 3100',
                        style: textThinStyle1.copyWith(
                            color: isSelected ? kWhite : kBlack),
                      )
                    ],
                  ),
                ),
              ),
            ),
            onDateChange: (selectedDate) {
              log(selectedDate.toString());
              controller.selctDate(selectedDate);
            },
          );
        }),
      ),
    );
  }
}
