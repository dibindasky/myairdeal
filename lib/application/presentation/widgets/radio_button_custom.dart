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
          selected
              ? const Icon(Icons.radio_button_checked, color: kBlue)
              : const Icon(Icons.radio_button_unchecked),
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
    this.image,
    required this.title,
    this.subtitle,
    required this.isSelected,
    required this.onTap,
  });
  final VoidCallback onTap;
  final String? image;
  final String title;
  final String? subtitle;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: image != null ? Image.asset(image!, height: 20.h) : null,
        title: Text(title),
        subtitle: subtitle != null
            ? Row(
                children: [
                  Image.asset(
                    'asset/icon/payment_agreee_tick.png',
                    height: 10.h,
                  ),
                  kWidth5,
                  Text(subtitle!,
                      style: textThinStyle1.copyWith(
                          color: kGreyDark, fontSize: 12.sp)),
                ],
              )
            : null,
        trailing: isSelected
            ? const Icon(Icons.radio_button_checked, color: kBlue)
            : const Icon(Icons.radio_button_unchecked),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}
