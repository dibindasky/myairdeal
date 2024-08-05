import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/onboarding/samble_widget.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class OnBoardInitail extends StatelessWidget {
  const OnBoardInitail({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return ScreenOnBoard(
      image: myOnbaordOne,
      text: 'Discover The',
      secText: 'Magnificent',
      thirdText: 'World..',
      skipOnTap: () {
        authController.skipOnBoard();
        Get.offAllNamed(Routes.signUpSignIn);
      },
      nextTap: () {
        Get.to(const OnBoardSecond());
      },
    );
  }
}

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return ScreenOnBoard(
      image: myOnboardTwo,
      text: 'Get the Best',
      secText: 'Flight Tickets',
      thirdText: 'for You..',
      skipOnTap: () {
        authController.skipOnBoard();
        Get.offAllNamed(Routes.signUpSignIn);
      },
      nextTap: () {
        Get.to(const OnbaordThird());
      },
    );
  }
}

class OnbaordThird extends StatelessWidget {
  const OnbaordThird({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return ScreenOnBoard(
      image: myOnbaordThree,
      text: 'Book',
      secText: 'Appointment',
      thirdText: 'in Easiest Way!',
      skipOnTap: () {
        authController.skipOnBoard();
        Get.offAllNamed(Routes.signUpSignIn);
      },
      nextTap: () {
        authController.skipOnBoard();
        Get.offAllNamed(Routes.signUpSignIn);
      },
    );
  }
}
