import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar(
      {super.key,
      this.heading,
      this.id,
      this.backButton = true,
      this.actionButton,
      this.bottomgap,
      this.topGap,
      this.onActionButtonTap});

  final String? heading;
  final String? actionButton;
  final VoidCallback? onActionButtonTap;
  final int? id;
  final bool backButton;
  final Widget? bottomgap;
  final Widget? topGap;

  @override
  Widget build(BuildContext context) {
    return AppBarCustomShape(
      backGroundImage: false,
      bottomgap: bottomgap ?? kHeight20,
      topGap: topGap ?? kEmpty,
      child: Column(
        children: [
          kHeight20,
          Row(
            children: [
              backButton
                  ? IconButton(
                      onPressed: () => Get.back(id: id),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: kWhite,
                        size: 18,
                      ),
                    )
                  : kEmpty,
              Text(
                heading ?? '',
                style: textStyle1.copyWith(
                  color: kWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
              const Spacer(),
              actionButton != null
                  ? GestureDetector(
                      onTap: onActionButtonTap,
                      child: Text(
                        actionButton ?? '',
                        style: textThinStyle1.copyWith(
                          color: kWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        ),
                      ),
                    )
                  : kEmpty,
              kWidth10
            ],
          ),
        ],
      ),
    );
  }
}
