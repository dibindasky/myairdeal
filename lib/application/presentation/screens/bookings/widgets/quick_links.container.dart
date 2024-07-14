import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class QuickLinksContainer extends StatelessWidget {
  const QuickLinksContainer({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight5,
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: kBlueLightShade, borderRadius: kRadius5),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(text),
                  ),
                ),
              ),
              Container(
                width: 35.w,
                decoration: BoxDecoration(
                    color: kBlue.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8.w),
                  child: Icon(
                    Icons.arrow_forward,
                    color: kWhite,
                    size: 17.h,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
