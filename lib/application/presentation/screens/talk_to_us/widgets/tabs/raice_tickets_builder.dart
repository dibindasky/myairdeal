import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class RaiceTicketsLists extends StatelessWidget {
  const RaiceTicketsLists({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TalkToUsController>();
    return Obx(
      () {
        if (controller.globalTickets.isEmpty) {
          return const Center(child: Text('No Raised Tickets'));
        }
        return ListView.separated(
          separatorBuilder: (index, dimensions) => kHeight5,
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: controller.globalTickets.length,
          itemBuilder: (context, index) {
            final data = controller.globalTickets[index];
            return Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                  color: kGreyLight,
                  border: Border.all(color: kBlack),
                  borderRadius: kRadius10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data.heading ?? ''),
                      Text(data.type ?? 'type')
                    ],
                  ),
                  kHeight5,
                  Text(data.description ?? 'Des'),
                  kHeight5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data.product ?? 'product'),
                      Text(data.status ?? 'sta')
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
