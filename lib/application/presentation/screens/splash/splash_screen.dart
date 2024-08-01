import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      authController.getSplash();
      Timer(const Duration(milliseconds: 1600), () {
        authController.whereToGo();
      });
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
            return authController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(color: kBlueLight))
                : Center(
                    child: AnimatedGrowShrinkContainer(
                      child: Hero(
                          tag: 'onbaordImage',
                          child: Image.memory(base64
                              .decode(authController.splashModelImage.value))),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
