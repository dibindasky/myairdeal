import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.bottomBar);
      });
    });
    return const Scaffold(
      body: Center(
        child: Text('ScreenSplash'),
      ),
    );
  }
}
