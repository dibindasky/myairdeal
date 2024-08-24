import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/refresh_indicator/refresh_custom.dart';

class RaiceTicketsLists extends StatelessWidget {
  const RaiceTicketsLists({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TalkToUsController>();
    return Obx(
      () {
        if (controller.globalTickets.isEmpty) {
          return ErrorRefreshIndicator(
            image: nodata,
            onRefresh: () async {
              controller.getAllTickets();
            },
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            controller.getAllTickets();
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                ListView.separated(
                  separatorBuilder: (index, dimensions) => kHeight5,
                  padding: EdgeInsets.only(bottom: 10.w),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                              Text(data.type ?? '',
                                  style: textStyle1.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                          kHeight5,
                          Text(data.description ?? 'Des'),
                          kHeight5,
                          Text(data.status ?? 'sta'),
                        ],
                      ),
                    );
                  },
                ),
                kHeight10
              ],
            ),
          ),
        );
      },
    );
  }
}
