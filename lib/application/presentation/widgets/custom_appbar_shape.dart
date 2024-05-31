import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/clippers/appbar_clippers.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AppBarCustomShape extends StatelessWidget {
  const AppBarCustomShape({super.key, required this.child});
  final Widget child;

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
                image: DecorationImage(image: AssetImage(imageGlobalMap))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                children: [child, kHeight50],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
