import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class DottedLines extends StatelessWidget {
  const DottedLines({
    super.key,
    this.length = 500,
    this.height = 8,
  });

  final int length;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(0),
        itemCount: length,
        shrinkWrap: true,
        itemBuilder: (context, index) => Text(
          '_',
          style: textThinStyle1.copyWith(fontSize: 7.sp),
        ),
      ),
    );
  }
}
