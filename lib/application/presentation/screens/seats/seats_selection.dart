import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenSeatSelection extends StatefulWidget {
  const ScreenSeatSelection({super.key});

  @override
  _ScreenSeatSelectionState createState() => _ScreenSeatSelectionState();
}

class _ScreenSeatSelectionState extends State<ScreenSeatSelection> {
  // Define the seat states
  static const String reserved = 'reserved';
  static const String free = 'free';
  static const String paid = 'paid';

  // Define the initial seat layout
  List<List<String>> seatLayout = [
    [reserved, free, free, free, free, reserved],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [reserved, free, free, free, free, reserved],
    [free, free, free, free, free, free],
    [free, free, reserved, reserved, free, free],
    [free, free, free, free, free, free],
    [free, reserved, reserved, reserved, reserved, free],
    [free, free, free, free, free, free],
  ];

  // Define the selected seats
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
          const DetailAppBar(heading: 'Seat selection', id: 1),
          kHeight15,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
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
                CircleAvatar(radius: 8.w, backgroundColor: kBluePrimary),
                kWidth5,
                const Text('Paid'),
                kWidth10
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  boxShadow: boxShadow1,
                  color: kWhite,
                  borderRadius: kRadius10),
              child: Column(
                children: [
                  kHeight10,
                  Text('Class',
                      style: textThinStyle1.copyWith(color: kBluePrimary)),
                  Text('Economy', style: textStyle1.copyWith(color: kBlueDark)),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(20),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                      ),
                      itemCount: seatLayout.length * seatLayout[0].length,
                      itemBuilder: (context, index) {
                        int row = index ~/ 6;
                        int col = index % 6;
                        return GestureDetector(
                          onTap: () => onSeatTap(row, col),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                              color: getSeatColor(row, col),
                              border: seatLayout[row][col] == free
                                  ? Border.all(color: Colors.blue)
                                  : null,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                '${String.fromCharCode(65 + col)}${row + 1}',
                                style: TextStyle(
                                  color: selectedSeats[row][col]
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add ons total: ₹120'),
                    Text('Total: ₹3620'),
                  ],
                ),
                EventButton(text: 'Pay now', onTap: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color getSeatColor(int row, int col) {
    if (selectedSeats[row][col]) {
      return Colors.blue;
    } else {
      switch (seatLayout[row][col]) {
        case reserved:
          return Colors.grey;
        case free:
          return Colors.white;
        case paid:
          return Colors.blue;
        default:
          return Colors.white;
      }
    }
  }
}
