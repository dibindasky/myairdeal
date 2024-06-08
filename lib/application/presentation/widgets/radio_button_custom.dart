import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.selected,
    required this.text,
    required this.onChanged,
  });

  final bool selected;
  final String text;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          !selected
              ? const CircleAvatar(
                  backgroundColor: kGrey,
                  radius: 9,
                  child: CircleAvatar(
                    backgroundColor: kWhite,
                    radius: 8,
                  ),
                )
              : const CircleAvatar(
                  backgroundColor: kBluePrimary,
                  radius: 10,
                  child: CircleAvatar(
                    backgroundColor: kWhite,
                    radius: 9,
                    child: CircleAvatar(
                      backgroundColor: kBluePrimary,
                      radius: 8,
                    ),
                  ),
                ),
          kWidth5,
          Text(text),
        ],
      ),
    );
  }
}

class PaymentMethodSelection extends StatelessWidget {
  const PaymentMethodSelection({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });
  final VoidCallback onTap;
  final String image;
  final String title;
  final String subtitle;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Image.asset(image, height: 20.h),
        title: Text(title),
        subtitle: Row(
          children: [
            Image.asset(
              'asset/icon/payment_agreee_tick.png',
              height: 10.h,
            ),
            kWidth5,
            Text(subtitle,
                style:
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 12.sp)),
          ],
        ),
        trailing: isSelected
            ? const Icon(Icons.radio_button_checked, color: kBlue)
            : const Icon(Icons.radio_button_unchecked),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}
