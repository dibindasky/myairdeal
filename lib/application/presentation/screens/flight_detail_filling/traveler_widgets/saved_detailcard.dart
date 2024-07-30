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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              Row(
                children: [
                  Icon(Icons.turned_in_outlined, size: 17.w, color: kBlue),
                  kWidth5,
                  Text('Category', style: textThinStyle1),
                ],
              ),
              kHeight5,
              Row(
                children: [
                  Icon(Icons.person, size: 17.w, color: kBlue),
                  kWidth5,
                  Text('Name', style: textThinStyle1),
                ],
              ),
              kHeight5,
              Row(
                children: [
                  Icon(Icons.date_range, size: 17.w, color: kBlue),
                  kWidth5,
                  Text('DOB', style: textThinStyle1)
                ],
              ),
              kHeight5,
              Row(
                children: [
                  Icon(Icons.date_range, size: 17.w, color: kBlue),
                  kWidth5,
                  Text('Passport Number', style: textThinStyle1)
                ],
              ),
              kHeight5,
              Row(
                children: [
                  Icon(Icons.date_range, size: 17.w, color: kBlue),
                  kWidth5,
                  Text('Passport Issue Date', style: textThinStyle1)
                ],
              ),
              kHeight5,
              Row(
                children: [
                  Icon(Icons.date_range, size: 17.w, color: kBlue),
                  kWidth5,
                  Text('Passport Expiry Date', style: textThinStyle1)
                ],
              ),
              kHeight10,
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              Text('${passengers?.pt}', style: textThinStyle1),
              kHeight5,
              Text('${passengers?.ti} ${passengers?.fN} ${passengers?.lN}',
                  style: textThinStyle1),
              kHeight5,
              Text('${passengers?.dob}', style: textThinStyle1),
              kHeight5,
              Text(passengers?.pNum ?? 'Pnum', style: textThinStyle1),
              kHeight5,
              Text(passengers?.pid ?? 'Pid', style: textThinStyle1),
              kHeight5,
              Text('${passengers?.eD}', style: textThinStyle1),
              kHeight10,
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 12.sp, color: kGrey)
        ],
      ),
    );
  }
}
