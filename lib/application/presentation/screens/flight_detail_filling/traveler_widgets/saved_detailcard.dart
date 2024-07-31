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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.turned_in_outlined, size: 17.w, color: kBlue),
                  kWidth10,
                  Text('Category', style: textThinStyle1),
                ],
              ),
              Text('${passengers?.pt}', style: textThinStyle1),
            ],
          ),
          kHeight5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.person, size: 17.w, color: kBlue),
                  kWidth10,
                  Text('Name', style: textThinStyle1),
                ],
              ),
              Text('${passengers?.ti} ${passengers?.fN} ${passengers?.lN}',
                  style: textThinStyle1),
            ],
          ),
          kHeight5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.date_range, size: 17.w, color: kBlue),
                  kWidth10,
                  Text('DOB', style: textThinStyle1),
                ],
              ),
              Text('${passengers?.dob}', style: textThinStyle1),
            ],
          ),
          kHeight5,
          passengers?.pNum != null && passengers?.pNum != ''
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.panorama_photosphere_outlined,
                            size: 17.w, color: kBlue),
                        kWidth10,
                        Text('Passport Number', style: textThinStyle1),
                      ],
                    ),
                    Text('${passengers?.pNum}', style: textThinStyle1),
                  ],
                )
              : kEmpty,
          kHeight5,
          passengers?.pid != null && passengers?.pid != ''
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range_rounded,
                            size: 17.w, color: kBlue),
                        kWidth10,
                        Text('Passport Issue Date', style: textThinStyle1),
                      ],
                    ),
                    Text('${passengers?.pid}', style: textThinStyle1),
                  ],
                )
              : kEmpty,
          kHeight5,
          passengers?.eD != null && passengers?.eD != ''
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.data_exploration_outlined,
                            size: 17.w, color: kBlue),
                        kWidth10,
                        Text('Passport Expiry Date', style: textThinStyle1),
                      ],
                    ),
                    Text('${passengers?.eD}', style: textThinStyle1),
                  ],
                )
              : kEmpty,
          kHeight5,
          passengers?.pN != null && passengers?.pN != ''
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_city, size: 17.w, color: kBlue),
                        kWidth10,
                        Text('Nationality', style: textThinStyle1),
                      ],
                    ),
                    Text('${passengers?.pN}', style: textThinStyle1),
                  ],
                )
              : kEmpty,
          kHeight10,
        ],
      ),
    );
  }
}
