import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenSeatSelection extends StatefulWidget {
  const ScreenSeatSelection({super.key});

  @override
  _ScreenSeatSelectionState createState() => _ScreenSeatSelectionState();
}

class _ScreenSeatSelectionState extends State<ScreenSeatSelection> {
  // seat states
  static const String reserved = 'reserved';
  static const String free = 'free';
  static const String paid = 'paid';

  // initial seat layout
  List<List<String>> seatLayout = [
    [reserved, free, free, free, free, reserved],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [reserved, free, free, free, free, reserved],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [free, reserved, reserved, reserved, reserved, free],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [free, free, free, free, free, free],
    [free, reserved, reserved, reserved, reserved, free],
    [free, free, free, free, free, paid],
    [free, reserved, reserved, reserved, reserved, free],
  ];

  // selected seats
  List<List<bool>> selectedSeats = [];

  @override
  void initState() {
    super.initState();
    selectedSeats = List.generate(
      seatLayout.length,
      (i) => List.generate(seatLayout[i].length, (j) => false),
    );
  }

  void onSeatTap(int row, int col) {
    if (seatLayout[row][col] == free) {
      setState(() {
        selectedSeats[row][col] = !selectedSeats[row][col];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Seat selection'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  kHeight15,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                        borderRadius: kRadius50,
                        border: Border.all(color: kBlueLight),
                        boxShadow: boxShadow3),
                    child: Row(
                      children: [
                        kWidth10,
                        CircleAvatar(radius: 8.w, backgroundColor: kGrey),
                        kWidth5,
                        const Text('Reserved'),
                        const Spacer(),
                        CircleAvatar(
                          radius: 8.w,
                          backgroundColor: kBluePrimary,
                          child: CircleAvatar(
                            radius: 7.w,
                            backgroundColor: kGreyLight,
                          ),
                        ),
                        kWidth5,
                        const Text('Free'),
                        const Spacer(),
                        CircleAvatar(
                            radius: 8.w, backgroundColor: kBluePrimary),
                        kWidth5,
                        const Text('Paid'),
                        kWidth10
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    decoration: BoxDecoration(
                        boxShadow: boxShadow1,
                        color: kWhite,
                        borderRadius: kRadius10),
                    child: Column(
                      children: [
                        kHeight10,
                        Text('Class',
                            style:
                                textThinStyle1.copyWith(color: kBluePrimary)),
                        Text('Economy',
                            style: textStyle1.copyWith(color: kBlueDark)),
                        FittedBox(
                          child: Column(
                            children:
                                List.generate(seatLayout.length + 1, (index) {
                              int row = index - 1;
                              return Row(
                                children: List.generate(
                                  seatLayout[row == -1 ? 0 : row].length + 1,
                                  (index) {
                                    int col = index - 1;
                                    if (col == -1 || row == -1) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                            left: col == 3 ? 20 : 10.w,
                                            right: col == 2 ? 20 : 10.w,
                                            top: 5.h,
                                            bottom: 5.h),
                                        height: col == -1 && row == -1
                                            ? 0
                                            : row == -1
                                                ? 15.h
                                                : 35.h,
                                        width: col == -1 && row == -1
                                            ? 15.w
                                            : col == -1
                                                ? 15.w
                                                : 30.w,
                                        child: Center(
                                          child: Text(row == -1 && col == -1
                                              ? ''
                                              : row == -1
                                                  ? String.fromCharCode(
                                                      65 + col)
                                                  : col == -1
                                                      ? '${row + 1}'
                                                      : ''),
                                        ),
                                      );
                                    } else {
                                      return GestureDetector(
                                        onTap: () {
                                          onSeatTap(row, col);
                                        },
                                        child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          margin: EdgeInsets.only(
                                              left: col == 3 ? 20 : 10,
                                              right: col == 2 ? 20 : 10,
                                              top: 5,
                                              bottom: 5),
                                          height: 35.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            color: getSeatColor(row, col),
                                            border: seatLayout[row][col] == free
                                                ? Border.all(color: kBlueDark)
                                                : null,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: selectedSeats[row][col]
                                              ? Center(
                                                  child: Text(
                                                    '${String.fromCharCode(65 + col)}${row + 1}',
                                                    style: textThinStyle1
                                                        .copyWith(
                                                            color:
                                                                selectedSeats[
                                                                            row]
                                                                        [col]
                                                                    ? kWhite
                                                                    : kBlack),
                                                  ),
                                                )
                                              : null,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight10
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: kWhite, boxShadow: boxShadow1),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add ons total', style: textThinStyle1),
                    Text('₹120', style: textStyle1),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total', style: textThinStyle1),
                    Text('₹3620', style: textStyle1),
                  ],
                ),
                EventIconButton(
                  suffixIcon: Image.asset(tickIcon,height: 15.h),
                    text: 'Pay now',
                    onTap: () {
                      Get.toNamed(Routes.payment);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color getSeatColor(int row, int col) {
    if (selectedSeats[row][col]) {
      return kGreen;
    } else {
      switch (seatLayout[row][col]) {
        case reserved:
          return kGrey;
        case free:
          return kWhite;
        case paid:
          return kBluePrimary;
        default:
          return kWhite;
      }
    }
  }
}
