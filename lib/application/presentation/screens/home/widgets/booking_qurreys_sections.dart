import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class BookingIssuesQuerySection extends StatelessWidget {
  const BookingIssuesQuerySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Iconsax.repeat,
      Iconsax.global,
      Iconsax.close_circle,
      Iconsax.close_circle
    ];
    List<String> text = [
      'Check refund',
      'Web Check in',
      'Cancellation',
      'Web Check in'
    ];

    return Row(
      children: List.generate(
        4,
        (index) => Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                  decoration: BoxDecoration(
                      color: kBlueLightShade,
                      border: Border.all(color: kBluePrimary),
                      borderRadius: kRadius10),
                  child: Column(
                    children: [
                      kHeight5,
                      Icon(icons[index], color: kIndigo),
                      kHeight5,
                      FittedBox(
                        child: Text(text[index],
                            style: textThinStyle1.copyWith(color: kIndigo)),
                      ),
                      kHeight5
                    ],
                  ),
                ),
              ),
              index != 4 ? kWidth5 : kEmpty
            ],
          ),
        ),
      ),
    );
  }
}
