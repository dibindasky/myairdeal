import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class EmptyBookingScreen extends StatelessWidget {
  const EmptyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Image.asset(bookingEmptyImage),
        Text(
          'Let’s go somewhere',
          style: textHeadStyle1.copyWith(fontSize: 25.sp),
        ),
        Text(
          'After book a trip you can manage orders and see E-ticket here.',
          style: textThinStyle1,
        )
      ],
    );
  }
}
