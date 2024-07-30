import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SelectedContainers extends StatelessWidget {
  const SelectedContainers({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    final tripInfos = controller.retrieveSingleBookingresponceModel.value
        .retrieveSingleBookingresponceModel?.itemInfos?.air?.tripInfos;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
          GetBuilder<TicketCancellationController>(builder: (cancelController) {
        return Row(
          children: List.generate(
            5,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: kGreyLightBackground,
                border: Border.all(color: kBlack),
                borderRadius: kRadius10,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kWidth5,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.w),
                        child: Image.asset(
                          flightDetailIcon,
                          height: 13.h,
                        ),
                      ),
                      Text(
                          '${tripInfos?[index].sI?[0].da?.city ?? ''}- ${tripInfos?[index].sI?[((tripInfos[index].sI?.length ?? 1) - 1)].aa?.city ?? ''}',
                          style:
                              textStyle1.copyWith(fontWeight: FontWeight.bold)),
                      Text(
                          'Passengers count - ${cancelController.cancelSelectedItems.value.trips?[index].travellers?.length}',
                          style: textThinStyle1.copyWith(fontSize: 10.sp)),
                      kHeight5,
                      kHeight5
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
