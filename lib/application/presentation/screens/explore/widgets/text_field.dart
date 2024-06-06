import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ExploreTextField extends StatelessWidget {
  const ExploreTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: boxShadow2, borderRadius: kRadius5),
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
            Icons.search,
            color: kGreyDark,
          ),
          suffixIcon: const Icon(
            Icons.mic,
            color: kGreyDark,
          ),
        ),
      ),
    );
  }
}
