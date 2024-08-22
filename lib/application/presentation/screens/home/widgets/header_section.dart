import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({
    super.key,
    required this.heading,
    this.icon = true,
    this.onTap,
    this.backButton = false,
    this.backButtonTap,
  });

  final String heading;
  final bool icon;
  final bool backButton;
  final VoidCallback? backButtonTap;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final talkUscontroller = Get.find<TalkToUsController>();
    final homeController = Get.find<FlightSortController>();
    final themeController = Get.find<ThemeController>();
    return AppBarCustomShape(
      child: Column(
        children: [
          kHeight30,
          Row(
            children: [
              backButton
                  ? IconButton(
                      onPressed: backButtonTap,
                      icon: const Icon(Icons.arrow_back_ios, color: kWhite))
                  : kEmpty,
              Text(heading, style: textHeadStyle1.copyWith(color: kWhite)),
              const Spacer(),
              icon
                  ? GestureDetector(
                      onTap: onTap,
                      child: CircleAvatar(
                        radius: 15.w,
                        backgroundColor: kWhite,
                        child: Icon(
                          Icons.notifications_none,
                          size: 20.w,
                        ),
                      ),
                    )
                  : kHeight5
            ],
          ),
          kHeight20,
          Container(
            height: 110.h,
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(color: kWhite, borderRadius: kRadius15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) {
                  List<String> homeTabTitle = [
                    'Flights',
                    'Air \nAmbulance',
                    'Helicopter',
                    'Private Jet'
                  ];
                  return GestureDetector(
                    onTap: () {
                      if (homeTabTitle[index] != 'Flights') {
                        Get.toNamed(Routes.commingSoon,
                            arguments: {"image": homeTabImages[index]});
                      }
                      if (homeTabTitle[index] == 'Air \nAmbulance') {
                        talkUscontroller.changeEnquiryType('Air Ambulance');
                      } else if (homeTabTitle[index] == 'Private Jet') {
                        talkUscontroller.changeEnquiryType('Private Jet');
                      } else if (homeTabTitle[index] == 'Helicopter') {
                        talkUscontroller.changeEnquiryType('Helicopter');
                      }
                    },
                    child:
                        GetBuilder<FlightSortController>(builder: (controller) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: boxShadow2, borderRadius: kRadius50),
                            child: CircleAvatar(
                              radius: 30.w,
                              backgroundImage: AssetImage(homeTabImages[index]),
                            ),
                          ),
                          kHeight5,
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  homeTabTitle[index],
                                  style: textThinStyle1.copyWith(
                                    fontWeight:
                                        index == 0 ? FontWeight.w500 : null,
                                  ),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          homeController.selectedCategoryType.value == index
                              ? Container(
                                  width: 23.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                      color: themeController.secondaryColor,
                                      borderRadius: kRadius10),
                                )
                              : kEmpty
                        ],
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
