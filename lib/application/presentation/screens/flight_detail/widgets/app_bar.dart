import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key,required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return AppBarCustomShape(
      backGroundImage: false,
      bottomgap: kHeight20,
      child: Column(
        children: [
          kHeight20,
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: kWhite,
                  size: 18,
                ),
              ),
              Text(
                'Review Flight Details',
                style: textStyle1.copyWith(
                  color: kWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
