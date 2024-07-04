import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cotext = Get.find<TravellerController>();
    return Positioned(
      child: Padding(
        padding: EdgeInsets.only(top: 30.w),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.w),
          decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: kBlueLightShade,
              boxShadow: boxShadow1),
          width: double.infinity,
          child: Column(
            children: [
              kHeight10,
              ListView.separated(
                padding: const EdgeInsets.all(0),
                separatorBuilder: (context, index) => kHeight5,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 40.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGreen),
                      borderRadius: kRadius10,
                      color: kWhite,
                    ),
                    child: Row(
                      children: [
                        Text(cotext.addDetailsSubList[index]),
                        kWidth10,
                        CircleAvatar(
                          radius: 7.w,
                          backgroundColor: kGreen,
                          child: Icon(
                            Icons.check,
                            size: 13.w,
                            color: kWhite,
                          ),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 15.w, color: kGreen)
                      ],
                    ),
                  );
                },
              ),
              kHeight10
            ],
          ),
        ),
      ),
    );
  }
}
