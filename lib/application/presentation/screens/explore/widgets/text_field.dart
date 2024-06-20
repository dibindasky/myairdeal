import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ExploreTextField extends StatelessWidget {
  const ExploreTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: boxShadow2, borderRadius: kRadius5, color: kWhite),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        enabled: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: kGreylowLight,
          filled: true,
          hintText: 'Search any Fight',
          prefixIcon: const Icon(
            Iconsax.search_normal,
            color: kGreyDark,
          ),
          suffixIcon: const Icon(
            Iconsax.microphone,
            color: kGreyDark,
          ),
        ),
      ),
    );
  }
}
