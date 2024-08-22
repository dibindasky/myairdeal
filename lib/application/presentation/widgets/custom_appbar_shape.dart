import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/clippers/appbar_clippers.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AppBarCustomShape extends StatelessWidget {
  const AppBarCustomShape({
    super.key,
    required this.child,
    this.bottomGap,
    this.backGroundImage = true,
    this.topGap,
    this.image,
  });
  final Widget child;
  final Widget? bottomGap;
  final Widget? topGap;
  final bool backGroundImage;
  final String? image;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ThemeController>();
    return ClipPath(
      clipper: AppbarClipper1(),
      child: Container(
        color: controller.theme.value == AppTheme.blue
            ? controller.secondaryColor
            : controller.primaryColor,
        child: ClipPath(
          clipper: AppbarClipper2(),
          child: Container(
            decoration: BoxDecoration(
              color: controller.primaryColor,
              image: backGroundImage
                  ? DecorationImage(
                      image: AssetImage(image ?? controller.mapImage))
                  : null,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                children: [topGap ?? kEmpty, child, bottomGap ?? kHeight30],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
