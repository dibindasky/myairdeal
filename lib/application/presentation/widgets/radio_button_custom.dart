import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.selected,
    this.text,
    required this.onChanged,
    this.width,
    this.child,
    this.color=kBluePrimary
  });
  final SizedBox? width;
  final bool selected;
  final String? text;
  final VoidCallback onChanged;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              selected
                  ? Icon(Icons.radio_button_checked, color: color)
                  : const Icon(Icons.radio_button_unchecked),
              width ?? kWidth5,
              Text(text ?? ''),
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
            ? const Icon(Icons.radio_button_checked, color: kBluePrimary)
            : const Icon(Icons.radio_button_unchecked, color: kGrey),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}
