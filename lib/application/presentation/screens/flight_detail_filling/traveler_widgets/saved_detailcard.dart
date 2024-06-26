import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';

class SavedDetailsCard extends StatelessWidget {
  final int index;

  const SavedDetailsCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final travelerController = Get.find<TravellerController>();
    return GestureDetector(
      onTap: () {
        travelerController.changesAvedDetail(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        width: double.infinity,
        margin: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          border: Border.all(
            width: travelerController.selectedSavedDetailData.value == index
                ? 2
                : 1,
            color: travelerController.selectedSavedDetailData.value == index
                ? kIndigo
                : kBlue,
          ),
          borderRadius: kRadius10,
          color: kBlueThinLIght,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            Row(
              children: [
                CustomRadioButton(
                  selected:
                      travelerController.selectedSavedDetailData.value == index,
                  text: 'Select',
                  onChanged: () {
                    travelerController.changesAvedDetail(index);
                  },
                ),
              ],
            ),
            kHeight10,
            Row(
              children: [
                Icon(Icons.person, size: 17.w, color: kBlue),
                kWidth10,
                Text('Name', style: textThinStyle1),
              ],
            ),
            kHeight5,
            Text('Mr. Full Name', style: textStyle1.copyWith(fontSize: 14.sp)),
            kHeight10,
            Row(
              children: [
                Icon(Icons.phone, size: 17.w, color: kBlue),
                kWidth10,
                Text('Mobile number', style: textThinStyle1)
              ],
            ),
            kHeight5,
            Text('0000000000', style: textStyle1.copyWith(fontSize: 14.sp)),
            kHeight10,
            Row(
              children: [
                Icon(Icons.email, size: 17.w, color: kBlue),
                kWidth10,
                Text('Mail ID', style: textThinStyle1),
              ],
            ),
            kHeight5,
            Text('@gmail.com', style: textStyle1.copyWith(fontSize: 14.sp)),
            kHeight15
          ],
        ),
      ),
    );
  }
}
