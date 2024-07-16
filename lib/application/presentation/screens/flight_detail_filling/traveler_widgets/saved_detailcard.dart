import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/passengers/get_all_passengers/passenger.dart';

class SavedDetailsCard extends StatelessWidget {
  final int index;
  final Passenger? passengers;

  const SavedDetailsCard({Key? key, required this.index, this.passengers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final travelerController = Get.find<TravellerController>();
    return GestureDetector(
      onTap: () => travelerController.changesAvedDetail(index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: travelerController.selectedSavedDetailData.value == index
                ? kRed
                : kIndigo,
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
                Icon(Icons.email, size: 17.w, color: kBlue),
                kWidth20,
                Text('${passengers?.pt}', style: textThinStyle1),
              ],
            ),
            kHeight5,
            Row(
              children: [
                Icon(Icons.person, size: 17.w, color: kBlue),
                kWidth20,
                Text('${passengers?.ti} ${passengers?.fN} ${passengers?.lN}',
                    style: textThinStyle1),
              ],
            ),
            kHeight5,
            Row(
              children: [
                Icon(Icons.date_range, size: 17.w, color: kBlue),
                kWidth20,
                Text('${passengers?.dob}', style: textThinStyle1)
              ],
            ),
            kHeight10,
          ],
        ),
      ),
    );
  }
}
