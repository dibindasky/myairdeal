import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/clippers/appbar_clippers.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AppBarCustomShape extends StatelessWidget {
  const AppBarCustomShape(
      {super.key,
      required this.child,
      this.bottomgap,
      this.backGroundImage = true});
  final Widget child;
  final Widget? bottomgap;
  final bool backGroundImage;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppbarClipper1(),
      child: Container(
        color: kBlueDark,
        child: ClipPath(
          clipper: AppbarClipper2(),
          child: Container(
            decoration: BoxDecoration(
                color: kIndigo,
                image: backGroundImage
                    ? DecorationImage(image: AssetImage(imageGlobalMap))
                    : null),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                children: [child, bottomgap ?? kHeight50],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
