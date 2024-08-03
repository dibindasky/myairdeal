import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      authController.getSplashImageFromStorage();
      authController.getSplash();
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kBluePrimary, kIndigo],
          ),
        ),
        child: Obx(
          () {
            log('splash ${authController.splashModelImage.value}');
            return authController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(color: kBlueLight))
                : Center(
                    child: AnimatedGrowShrinkContainer(
                      child: Hero(
                          tag: 'onbaordImage',
                          child: authController.splashModelImage.value == ''
                              ? Image.asset(myAirDealLogo)
                              : Image.memory(base64.decode(
                                  authController.splashModelImage.value))),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
