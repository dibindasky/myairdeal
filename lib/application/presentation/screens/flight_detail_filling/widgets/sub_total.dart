import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/confirm_bottomsheet.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class SubToTalContainer extends StatelessWidget {
  const SubToTalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Subtotal',
              style: textThinStyle1,
            ),
            Text(
              '₹3500',
              style: textHeadStyle1,
            ),
          ],
        ),
        EventIconButton(
          width: 230.w,
          text: 'Proceed',
          suffixIcon: SizedBox(
            height: 15.h,
            width: 15.w,
            child: Image.asset(tickIcon),
          ),
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: kWhite,
              showDragHandle: true,
              enableDrag: true,
              context: context,
              builder: (context) => const ConfrimBottomSheet(),
            );
          },
        ),
      ],
    );
  }
}
