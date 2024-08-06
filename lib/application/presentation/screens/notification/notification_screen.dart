import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/notification/notification_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/refresh_indicator/refresh_custom.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({super.key});

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  final ScrollController scrollController = ScrollController();
  final notificationController = Get.find<NotificationController>();
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        notificationController.getNotificationNext();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        notificationController.getNotification();
      },
    );
    return Scaffold(
      body: GetBuilder<NotificationController>(builder: (conext) {
        return Column(
          children: [
            DetailAppBar(
              heading: 'Notifications',
              bottomgap: kHeight10,
              topGap: kHeight10,
            ),
            kHeight10,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Obx(() {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        notificationController.notificationType.length,
                        (index) => GestureDetector(
                            onTap: () {
                              notificationController
                                  .changeNotificationType(index);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.w, vertical: 5.h),
                                margin: EdgeInsets.symmetric(horizontal: 5.w),
                                decoration: BoxDecoration(
                                    boxShadow: boxShadow2,
                                    borderRadius: kRadius5,
                                    color: notificationController
                                                .notificationIndex.value ==
                                            index
                                        ? kBlueDark
                                        : kWhite),
                                child: Text(
                                  notificationController
                                      .notificationType[index],
                                  style: textStyle1.copyWith(
                                      color: notificationController
                                                  .notificationIndex.value ==
                                              index
                                          ? kWhite
                                          : kBlack),
                                ))),
                      ));
                })),
            //  Divider(endIndent: 20.w, indent: 20.w),
            kHeight10,
            Expanded(
              child: GetBuilder<NotificationController>(builder: (contxt) {
                if (notificationController.notificationLoading.value) {
                  return const Center(
                      child: CircularProgressIndicator(color: kBluePrimary));
                }
                if (notificationController.notificationList == null) {
                  return SizedBox(
                    height: 250.h,
                    child: Center(
                      child: Text(notificationController
                                  .notificationIndex.value ==
                              0
                          ? 'No Notifications'
                          : notificationController.notificationIndex.value == 1
                              ? 'No Unread Notifications'
                              : 'No Read Notifications'),
                    ),
                  );
                } else if (notificationController.notificationList!.isEmpty) {
                  return ErrorRefreshIndicator(
                    errorMessage: notificationController
                                .notificationIndex.value ==
                            0
                        ? 'No Notifications'
                        : notificationController.notificationIndex.value == 1
                            ? 'No Unread Notifications'
                            : 'No Read Notifications',
                    onRefresh: () {
                      notificationController.getNotification();
                    },
                  );
                }
                int length = notificationController.notificationLoading.value
                    ? (notificationController.notificationList?.length ?? 0) + 1
                    : notificationController.notificationList?.length ?? 0;
                return RefreshIndicator(
                  onRefresh: () async {
                    notificationController.getNotification();
                  },
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: length,
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final notification =
                          notificationController.notificationList?[index];
                      return GestureDetector(
                        onTap: () {
                          if (notification?.bookingID != null) {
                            Get.find<BookingController>().getSingleBooking(
                              retrieveSingleBookingRequestModel:
                                  RetrieveSingleBookingRequestModel(
                                      bookingId: notification?.bookingID),
                            );
                            Get.toNamed(Routes.invoice);
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 3.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              color: notification?.status == false
                                  ? kBlueLightShade
                                  : kWhite,
                              borderRadius: kRadius10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(notification?.title ?? '',
                                            style: textStyle1.copyWith(
                                                fontSize: 15.sp)),
                                        Text(
                                            DateFormating.getDate(
                                                notification?.createdAt),
                                            style: textThinStyle1.copyWith(
                                                color: kGreyDark))
                                      ],
                                    ),
                                    Text(notification?.body ?? '',
                                        style: textThinStyle1.copyWith(
                                            color: kGreyDark, fontSize: 13.sp))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
            )
          ],
        );
      }),
    );
  }
}
