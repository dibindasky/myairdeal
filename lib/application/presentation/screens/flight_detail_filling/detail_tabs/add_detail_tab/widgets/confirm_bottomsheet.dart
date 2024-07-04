import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ConfrimBottomSheet extends StatelessWidget {
  const ConfrimBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: kWhite, borderRadius: kRadius10),
      width: double.infinity,
      height: 380.h,
      child: ListView(
        children: [
          Text('Travel Insurance', style: textHeadStyle1),
          kHeight5,
          Text(
            'We Would  like to recommend that you secureyour travel',
            style: textThinStyle1.copyWith(color: kGreyDark),
          ),
          kHeight5,
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
            style: textThinStyle1.copyWith(color: kGrey, fontSize: 12.sp),
          ),
          kHeight5,
          Text('Key benifits', style: textThinStyle1),
          kHeight10,
          SizedBox(
            height: 120.h,
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
                      Image.asset('asset/icon/done_icon.png', height: 40.h),
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
          kHeight20,
          EventButton(
            isBorder: true,
            borderColor: kBlueLight,
            textColr: kBlueLight,
            color: kWhite,
            text: 'Continue without Securing your Travel',
            onTap: () {
              //Get.offNamed(Routes.travelerDetails);
              Navigator.pop(context);
              Get.find<TravellerController>().selectedMainTab.value = 2;
            },
          ),
          kHeight10,
          EventButton(
            text: 'Secure your Travel & Add travel insurance',
            onTap: () {
              Navigator.pop(context);
              Get.find<TravellerController>().selectedMainTab.value = 2;
              // Get.offNamed(Routes.travelerDetails);
            },
          ),
          kHeight20,
        ],
      ),
    );
  }
}
