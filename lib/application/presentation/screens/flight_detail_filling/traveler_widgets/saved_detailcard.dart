import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class SavedDetailsCard extends StatelessWidget {
  final TravellerInfo? passengers;

  const SavedDetailsCard({Key? key, this.passengers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: kIndigo,
        ),
        borderRadius: kRadius10,
        color: kBlueThinLIght,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                Row(
                  children: [
                    Icon(Icons.turned_in_outlined, size: 17.w, color: kBlue),
                    kWidth20,
                    Text('${passengers?.pt}', style: textThinStyle1),
                  ],
                ),
                kHeight5,
                Row(
                  children: [
                    Icon(Icons.person, size: 17.w, color: kBlue),
                    kWidth20,
                    Text(
                        '${passengers?.ti} ${passengers?.fN} ${passengers?.lN}',
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
          Icon(Icons.arrow_forward_ios, size: 12.sp, color: kGrey)
        ],
      ),
    );
  }
}
