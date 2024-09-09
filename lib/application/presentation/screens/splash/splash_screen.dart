import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/firebase_configuration/firebase_notification.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.forgroundMessage();
    notificationServices.firebaseInit(context);
    notificationServices.setupInteractMessage(context);
    notificationServices.isTokenRefresh();
  }

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              themeController.secondaryColor,
              themeController.primaryColor,
            ],
          ),
        ),
        child: Obx(
          () {
            return Center(
              child: AnimatedGrowShrinkContainer(
                child: Hero(
                  tag: 'onbaordImage',
                  child: authController.splashModelImage.value == ''
                      ? Image.asset(myAirDealLogo)
                      : Image.memory(
                          base64.decode(authController.splashModelImage.value),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
