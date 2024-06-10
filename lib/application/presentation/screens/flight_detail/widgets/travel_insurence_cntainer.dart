import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TravelInsurenceContainer extends StatelessWidget {
  const TravelInsurenceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final flightSortController = Get.find<FlightSortController>();
    return Container(
      decoration: BoxDecoration(
          color: kBlueLightShade,
          boxShadow: boxShadow1,
          borderRadius: kRadius15),
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Travel insurance',
              style: textHeadStyle1.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w800),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yes, Add Travel Insurance to my Trip',
                    style: textStyle1.copyWith(fontSize: 14.sp),
                  ),
                  Obx(
                    () => Switch(
                      activeTrackColor: kBlueDark,
                      activeColor: kBluePrimary,
                      value: flightSortController.travelInsurence.value,
                      onChanged: (value) {
                        flightSortController.changeTravelValue(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Rs.176 per passenger inclusive of 18% percent',
              style: textThinStyle1,
            ),
            kHeight5,
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: textThinStyle1.copyWith(color: kGreyDark, fontSize: 9.sp),
            ),
            Text(
              'Terms & Conditions',
              style:
                  textThinStyle1.copyWith(fontSize: 10.sp, color: kBluePrimary),
            ),
            const Divider(),
            ExpansionTile(
              // enableFeedback: false,
              iconColor: kBlue,
              childrenPadding: const EdgeInsets.all(0),
              tilePadding: const EdgeInsets.all(0),
              title: const Text('Key benifits'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: textStyle1.copyWith(fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
