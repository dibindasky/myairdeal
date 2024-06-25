import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class PersonClassBottomSheet extends StatelessWidget {
  const PersonClassBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Stack(
      children: [
        SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Container(
            color: kWhite,
            child: Column(
              children: [
                kHeight40,
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Obx(() {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Number Of Travellers',
                          style: textStyle1.copyWith(color: kGrey),
                        ),
                        kHeight10,
                        Column(
                          children: [
                            BuildCounterTile(
                                title: 'Adult',
                                subTitle: '12 yrs & above',
                                bottomText: 'On the day of travel',
                                decrement: () {
                                  controller.changeAdultCount(false);
                                },
                                increment: () {
                                  controller.changeAdultCount(true);
                                },
                                value: controller.adultCount.value.toString()),
                            kHeight20,
                            BuildCounterTile(
                                title: 'Children',
                                subTitle: '2 - 12 yrs',
                                bottomText: 'On the day of travel',
                                decrement: () {
                                  controller.changeChildrenCount(false);
                                },
                                increment: () {
                                  controller.changeChildrenCount(true);
                                },
                                value:
                                    controller.childrenCount.value.toString()),
                            kHeight20,
                            BuildCounterTile(
                              title: 'Infant',
                              subTitle: 'Under 2 yrs',
                              bottomText: 'On the day of travel',
                              decrement: () {
                                controller.changeInfantCount(false);
                              },
                              increment: () {
                                controller.changeInfantCount(true);
                              },
                              value: controller.infantCount.value.toString(),
                            ),
                          ],
                        ),
                        kHeight20,
                        Text(
                          'Choose Cabin Class',
                          style: textStyle1.copyWith(color: kGrey),
                        ),
                        kHeight10,
                        Wrap(
                          runSpacing: 10.h,
                          spacing: 10.w,
                          children: List.generate(
                            controller.classTypes.length,
                            (index) => GestureDetector(
                              onTap: () {
                                controller.changeClassTypes(
                                    controller.classTypes[index]);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: kRadius5,
                                    color: controller.classType.value ==
                                            controller.classTypes[index]
                                        ? kBluePrimary
                                        : kWhite,
                                    boxShadow: boxShadow2),
                                padding: EdgeInsets.all(10.w),
                                child: Text(
                                  controller.classTypes[index],
                                  style: textThinStyle1.copyWith(
                                    color: controller.classType.value ==
                                            controller.classTypes[index]
                                        ? kWhite
                                        : kGreyDark,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        kHeight10,
                        EventButton(
                            text: 'DONE',
                            onTap: () {
                              Navigator.pop(context);
                            },
                            width: double.infinity),
                        kHeight50
                      ],
                    );
                  }),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 40.h,
          decoration: BoxDecoration(boxShadow: boxShadow1, color: kWhite),
          padding: EdgeInsets.all(5.h),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close)),
              kWidth10,
              const Text('Select Travellers & Class')
            ],
          ),
        ),
      ],
    );
  }
}

class BuildCounterTile extends StatelessWidget {
  const BuildCounterTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.bottomText,
    required this.decrement,
    required this.increment,
    required this.value,
  });

  final String title;
  final String subTitle;
  final String bottomText;
  final String value;
  final VoidCallback decrement;
  final VoidCallback increment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: textHeadStyle1,
                ),
                kWidth10,
                Text(
                  subTitle,
                  style: textThinStyle1.copyWith(
                    color: kGreyDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Text(
              bottomText,
              style: textThinStyle1.copyWith(
                color: kGrey,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: kWhite, boxShadow: boxShadow2, borderRadius: kRadius10),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: decrement,
              ),
              Text(value, style: textHeadStyle1),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: increment,
              ),
            ],
          ),
        )
      ],
    );
  }
}
