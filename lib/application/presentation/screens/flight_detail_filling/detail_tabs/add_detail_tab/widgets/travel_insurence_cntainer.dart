import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';

class TravelInsurenceContainer extends StatelessWidget {
  const TravelInsurenceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final flightSortController = Get.find<FlightSortController>();
    return Container(
      decoration: BoxDecoration(
        color: kBlueLightShade,
        boxShadow: boxShadow1,
        borderRadius: kRadius15,
      ),
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
            CustomExpansionTile(
              isBorder: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Key benifits',
                    style: textStyle1.copyWith(fontSize: 12.sp),
                  ),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
              children: [
                SizedBox(
                  height: 100.h,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => kWidth10,
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: kBlueLightShade,
                            borderRadius: kRadius10,
                            border: Border.all(color: kBlueDark)),
                        width: 110.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('asset/icon/done_icon.png',
                                height: 40.h),
                            kHeight10,
                            Text(
                              'Common carrier delayclaim up to 1000',
                              style: textThinStyle1.copyWith(fontSize: 9.sp),
                            ),
                          ],
                        ),
                      );
                    },
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
