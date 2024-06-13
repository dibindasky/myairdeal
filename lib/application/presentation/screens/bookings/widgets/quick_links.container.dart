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
                width: 45.w,
                decoration: const BoxDecoration(
                    color: kBlueDark,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7.w),
                  child: const Icon(Icons.arrow_forward),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
