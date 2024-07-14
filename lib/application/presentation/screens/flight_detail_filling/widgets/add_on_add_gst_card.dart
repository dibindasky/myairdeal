import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/widgets/read_more_text.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AddOnesContainer extends StatelessWidget {
  const AddOnesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final flightController = Get.find<FlightSortController>();
    return Column(
      children: [
        kHeight20,
        Container(
          decoration: BoxDecoration(
              color: kWhite, boxShadow: boxShadow1, borderRadius: kRadius15),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add Ons(Optional)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Obx(
                    //   () => Checkbox(
                    //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    //     visualDensity:
                    //         const VisualDensity(horizontal: -4, vertical: -4),
                    //     activeColor: kBluePrimary,
                    //     value: flightController.addOnsChecked.value,
                    //     onChanged: (value) {
                    //       flightController.changeAdds(value ?? false);
                    //     },
                    //   ),
                    // ),
                    kWidth5,
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('asset/image/myair_deal_logo.png'),
                    ),
                    kWidth10,
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Take off: Giving children a second chance at life',
                            style: textHeadStyle1.copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.w300),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          ReadMoreText(
                            textStyle: textThinStyle1.copyWith(
                                color: kGreyDark, fontSize: 11.sp),
                            text:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        kHeight20,
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: BoxDecoration(
                color: kWhite, boxShadow: boxShadow1, borderRadius: kRadius15),
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add GST Details (Optional)',
                    style: textStyle1.copyWith(fontWeight: FontWeight.w800)),
                const Icon(Icons.arrow_forward_ios, color: kBluePrimary),
              ],
            ))
      ],
    );
  }
}
