import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

enum AppTheme { blue, gold }

/// for changing theme use this controller
class ThemeController extends GetxController {
  Rx<AppTheme> theme = AppTheme.gold.obs;

  void changeTheme(AppTheme theme) {
    this.theme.value = theme;
  }

  /// primary color
  Color get primaryColor {
    switch (theme.value) {
      case AppTheme.blue:
        return kBlueDark;
      case AppTheme.gold:
        return kDarkIndigo;
      default:
        return kDarkIndigo;
    }
  }

  /// primary color
  Color get secondaryColor {
    switch (theme.value) {
      case AppTheme.blue:
        return kBluePrimary;
      case AppTheme.gold:
        return kGoldPrimary;
      default:
        return kGoldPrimary;
    }
  }

  /// primary color
  Color get secondaryLightColor {
    switch (theme.value) {
      case AppTheme.blue:
        return kBlueLightShade;
      case AppTheme.gold:
        return kGoldLightPrimary;
      default:
        return kGoldLightPrimary;
    }
  }

  /// map image
  String get mapImage {
    switch (theme.value) {
      case AppTheme.blue:
        return imageGlobalMapGray;
      case AppTheme.gold:
        return imageGlobalMapGold;
      default:
        return imageGlobalMapGold;
    }
  }
}
