import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/traveller_info.dart';

class TravelersDetails extends StatelessWidget {
  const TravelersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    final travelersData = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.travellerInfos;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        border: Border.all(color: kBlueLight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Travelers info',
              style: textStyle1.copyWith(fontWeight: FontWeight.w700)),
          ...List.generate(
            (travelersData?.length ?? 0),
            (index) {
              final traveler = travelersData?[index];
              final isAlreadyAdded = bookingController.selectedTravelers
                  .any((participant) => participant.checkEquel(traveler));

              return GestureDetector(
                onTap: () {
                  if (isAlreadyAdded) {
                    bookingController.selectedTravelers.removeWhere(
                        (participant) => participant.checkEquel(traveler));
                  } else {
                    final participant =
                        TravellerInfo(fN: traveler?.fN, lN: traveler?.lN);
                    bookingController.selectedTravelers.add(participant);
                  }
                },
                child: GetBuilder<BookingController>(builder: (conext) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(
                      children: [
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${travelersData?[index].ti}  ${travelersData?[index].fN} ${travelersData?[index].lN}  (${travelersData?[index].pt})',
                              style: textThinStyle1.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            isAlreadyAdded
                                ? CircleAvatar(
                                    backgroundColor: kBlueLight,
                                    radius: 8.w,
                                    child: Icon(
                                      color: kWhite,
                                      Icons.check,
                                      size: 14.w,
                                    ))
                                : kEmpty,
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
