import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
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
    final themeController = Get.find<ThemeController>();
    return Positioned(
      // top: 140.h,
      bottom: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Obx(() {
          return EasyInfiniteDateTimeLine(
            timeLineProps: const EasyTimeLineProps(
              vPadding: 20,
              hPadding: 5,
            ),
            firstDate: DateTime.now(),
            lastDate:
                controller.depatureDate.value.add(const Duration(days: 60)),
            focusDate: controller.depatureDate.value,
            showTimelineHeader: false,
            itemBuilder: (context, date, isSelected, onTap) => GestureDetector(
              onTap: () {
                onTap();
                controller.searchFlights(true);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  borderRadius: kRadius15,
                  color: isSelected ? themeController.secondaryColor : kGrey,
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
                        // '₹ 3100',
                        DateFormating.getMonthAbbreviation(date.month),
                        style: textThinStyle1.copyWith(
                            color: isSelected &&
                                    themeController.theme.value == AppTheme.blue
                                ? kWhite
                                : kBlack),
                      ),
                      Text(
                        date.day.toString(),
                        style: textHeadStyle1.copyWith(
                            color: isSelected &&
                                    themeController.theme.value == AppTheme.blue
                                ? kWhite
                                : kBlack),
                      ),
                      Text(
                        DateFormating.getWeekDay(date.weekday),
                        style: textThinStyle1.copyWith(
                            color: isSelected &&
                                    themeController.theme.value == AppTheme.blue
                                ? kWhite
                                : kBlack),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onDateChange: (selectedDate) {
              controller.changeDepartureDate(selectedDate);
              controller.searchFlights(true);
            },
          );
        }),
      ),
    );
  }
}
