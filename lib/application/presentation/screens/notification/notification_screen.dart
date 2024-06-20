import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/notification/notification_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NotificationController>();
    return Scaffold(
        body: Column(
      children: [
        DetailAppBar(
          heading: 'Notifications',
          actionButton: 'Clear all',
          onActionButtonTap: () {},
          bottomgap: kHeight10,
          topGap: kHeight10,
        ),
        kHeight10,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Obx(() {
            return Row(
              children: List.generate(
                  controller.notificationType.length,
                  (index) => GestureDetector(
                        onTap: () {
                          controller.changeNotificationType(index);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 5.h),
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          decoration: BoxDecoration(
                              boxShadow: boxShadow2,
                              borderRadius: kRadius5,
                              color: controller.notificationIndex.value == index
                                  ? kBlueDark
                                  : kWhite),
                          child: Text(
                            controller.notificationType[index],
                            style: textStyle1.copyWith(
                                color:
                                    controller.notificationIndex.value == index
                                        ? kWhite
                                        : kBlack),
                          ),
                        ),
                      )),
            );
          }),
        ),
        Divider(endIndent: 20.w, indent: 20.w),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              // height: 100.h,
              color: index == 0 ? kBlueLightShade : kWhite,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(imageChatPerson),
                  ),
                  kWidth10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Super Offer', style: textHeadStyle1),
                            Text('Mon,11:50pm',
                                style:
                                    textThinStyle1.copyWith(color: kGreyDark))
                          ],
                        ),
                        Text('Get 60% off in our first booking',
                            style: textStyle1.copyWith(color: kGreyDark))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
