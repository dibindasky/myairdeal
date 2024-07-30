import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/traveller_info.dart';

class TravelersDetails extends StatelessWidget {
  const TravelersDetails({
    super.key,
    this.travellerInfos,
    required this.tripIndex,
  });

  final List<TravellerInfo>? travellerInfos;
  final int tripIndex;

  @override
  Widget build(BuildContext context) {
    final cancellationController = Get.find<TicketCancellationController>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        border: Border.all(color: kBlueLight),
      ),
      child: GetBuilder<TicketCancellationController>(builder: (contxt) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Travelers info',
                style: textStyle1.copyWith(fontWeight: FontWeight.w700)),
            ...List.generate(
              (travellerInfos?.length ?? 0),
              (travllerIndex) {
                final TravellerInfo? travelerInfo =
                    travellerInfos?[travllerIndex];

                final isSelected = cancellationController.isTravelerSelected(
                    tripIndex, travelerInfo);

                return GestureDetector(
                  onTap: () {
                    cancellationController.travellerChoose(
                        tripIndex, travllerIndex);
                  },
                  child: Container(
                    decoration: const BoxDecoration(color: knill),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${travelerInfo?.ti}  ${travelerInfo?.fN} ${travelerInfo?.lN}  (${travelerInfo?.pt})',
                              style: textThinStyle1.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            isSelected
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
                  ),
                );
              },
            ),
          ],
        );
      }),
    );
  }
}
