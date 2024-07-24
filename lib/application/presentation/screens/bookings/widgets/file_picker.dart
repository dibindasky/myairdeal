import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class BookingFilePicker extends StatelessWidget {
  const BookingFilePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            child: ColoredBox(
              color: kBlueLightShade,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.w),
                child: const Text('File'),
              ),
            ),
          ),
        ),
        EventButton(
          hieght: 37.h,
          borderRadius: 3,
          style: textThinStyle1.copyWith(fontSize: 10.sp, color: kWhite),
          width: 60.w,
          text: 'Browse',
          onTap: () async {},
        ),
      ],
    );
  }
}
