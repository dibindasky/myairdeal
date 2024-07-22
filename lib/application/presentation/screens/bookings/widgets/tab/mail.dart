import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/tasks.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RaiceTicketController>();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        controller.getAllRaisedTickets(
            createdId: Get.find<BookingController>()
                    .retrieveSingleBookingresponceModel
                    .value
                    .retrieveSingleBookingresponceModel
                    ?.order
                    ?.bookingId ??
                '');
      },
    );
    return Obx(
      () => ListView.builder(
        padding: const EdgeInsets.all(0),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.allTickets.length,
        itemBuilder: (context, index) {
          return EmailListItem(ticketData: controller.allTickets[index]);
        },
      ),
    );
  }
}

class EmailListItem extends StatelessWidget {
  final Tasks ticketData;

  const EmailListItem({super.key, required this.ticketData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.w),
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        color: kGreylowLight,
        border: Border.all(color: kBlueLight),
      ),
      child: ListTile(
        isThreeLine: true,
        iconColor: kBlack,
        enableFeedback: true,
        leading: CircleAvatar(
          radius: 20.w,
          backgroundColor: kBlueLightShade,
          child: const Icon(
            Icons.person,
            color: kBlack,
          ),
        ),
        title: Text(
          ticketData.heading ?? '',
          style:
              textStyle1.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ticketData.description ?? '',
              style: textThinStyle1,
            ),
            Text(
              ticketData.bookingId ?? '',
              style: textThinStyle1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        trailing: Text(DateFormating.getDate(ticketData.createdAt)),
      ),
    );
  }
}
