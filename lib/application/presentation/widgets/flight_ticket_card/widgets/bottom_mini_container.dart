import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class BottomMiniContainer extends StatelessWidget {
  const BottomMiniContainer({
    super.key,
    required this.flightTicketCardEnum,
    this.price = 0,
    this.buttonOnTap,
  });

  final FlightTicketCardEnum flightTicketCardEnum;
  final double price;
  final VoidCallback? buttonOnTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: ColoredBox(
        color: (flightTicketCardEnum == FlightTicketCardEnum.cancelled)
            ? kRedLight
            : kBluePrimary,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: flightTicketCardEnum == FlightTicketCardEnum.cancelled
              ? Column(
                  children: [
                    kHeight7,
                    Text(
                      'Cancelled',
                      style: textStyle1.copyWith(fontSize: 14.sp),
                    ),
                    kHeight7
                  ],
                )
              : flightTicketCardEnum == FlightTicketCardEnum.complete
                  ? Column(
                      children: [
                        kHeight7,
                        Row(
                          children: [
                            kWidth20,
                            Text('Please rate the trip',
                                style: textStyle1.copyWith(fontSize: 11.sp)),
                            const Spacer(),
                            ...List.generate(
                              5,
                              (index) => Row(
                                children: [
                                  kWidth5,
                                  Icon(
                                    Icons.star,
                                    color: kWhite,
                                    size: 20.h,
                                  ),
                                ],
                              ),
                            ),
                            kWidth20,
                          ],
                        ),
                        kHeight7,
                      ],
                    )
                  : flightTicketCardEnum == FlightTicketCardEnum.refundStatus
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ticket Price',
                                  style: textStyle1.copyWith(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  '₹ 3500',
                                  style: textStyle1.copyWith(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cancel charges',
                                  style: textStyle1.copyWith(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  '₹ 200',
                                  style: textStyle1.copyWith(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Refund Price',
                                  style: textStyle1.copyWith(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  '₹ 3500',
                                  style: textStyle1.copyWith(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : Row(
                          children: [
                            kWidth20,
                            Column(
                              children: [
                                kHeight10,
                                Row(
                                  children: [
                                    Text(
                                      'Ticket Price',
                                      style: textStyle1.copyWith(
                                          color: kWhite,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    kWidth10,
                                    flightTicketCardEnum ==
                                            FlightTicketCardEnum.upcoming
                                        ? Text(
                                            '$price',
                                            style: textStyle1.copyWith(
                                                color: kWhite,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w800),
                                          )
                                        : kEmpty
                                  ],
                                ),
                                kHeight10,
                              ],
                            ),
                            const Spacer(),
                            flightTicketCardEnum ==
                                    FlightTicketCardEnum.upcoming
                                ? EventIconButton(
                                    borderRadius: 60,
                                    hieght: 25.h,
                                    width: 30.w,
                                    color: kIndigo,
                                    prefixIcon: Icon(
                                      Icons.share,
                                      size: 17.w,
                                      color: kWhite,
                                    ),
                                    onTap: () {},
                                  )
                                : kEmpty,
                            kWidth10,
                            flightTicketCardEnum ==
                                    FlightTicketCardEnum.homeSort
                                ? Text(
                                    '₹ $price',
                                    style: textStyle1.copyWith(
                                        color: kWhite,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                : buttonOnTap == null
                                    ? kEmpty
                                    : flightTicketCardEnum ==
                                                FlightTicketCardEnum
                                                    .specialOffers ||
                                            flightTicketCardEnum ==
                                                FlightTicketCardEnum.complete
                                        ? EventButton(
                                            fontSize: 10.sp,
                                            width: 80.w,
                                            hieght: 25.h,
                                            borderRadius: 29,
                                            color: kIndigo,
                                            text: flightTicketCardEnum ==
                                                    FlightTicketCardEnum
                                                        .complete
                                                ? 'Download'
                                                : 'Book Now',
                                            onTap: buttonOnTap ?? () {},
                                          )
                                        : kEmpty,
                            kWidth10
                          ],
                        ),
        ),
      ),
    );
  }
}
