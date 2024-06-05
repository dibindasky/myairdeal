import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({
    super.key,
    required this.heading,
    this.icon = true,
    this.onTap,
  });

  final String heading;
  final bool icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBarCustomShape(
      child: Column(
        children: [
          kHeight30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(heading, style: textHeadStyle1.copyWith(color: kWhite)),
              icon
                  ? GestureDetector(
                      onTap: onTap,
                      child: CircleAvatar(
                        radius: 15.w,
                        backgroundColor: kWhite,
                        child: Icon(
                          Iconsax.notification,
                          size: 20.w,
                        ),
                      ),
                    )
                  : kHeight5
            ],
          ),
          kHeight20,
          Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(color: kWhite, borderRadius: kRadius15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(100),
                      child: CircleAvatar(
                          radius: 30.w,
                          backgroundImage: AssetImage(imageFlight)),
                    ),
                    kHeight5,
                    Text(
                      'Flights',
                      style: textThinStyle1.copyWith(
                        fontWeight: index == 0 ? FontWeight.w500 : null,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
