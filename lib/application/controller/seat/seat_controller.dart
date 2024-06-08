import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class SeatController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    createSelectedSeats();
  }

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
  RxList<List<bool>> selectedSeats = <List<bool>>[].obs;

  void createSelectedSeats() {
    selectedSeats.value = List.generate(
      seatLayout.length,
      (i) => List.generate(seatLayout[i].length, (j) => false),
    );
  }

  void onSeatTap(int row, int col) {
    if (seatLayout[row][col] == free) {
      selectedSeats[row][col] = !selectedSeats[row][col];
      update();
    }
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
