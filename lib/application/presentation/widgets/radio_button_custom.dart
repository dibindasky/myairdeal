import 'package:flutter/material.dart';
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
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isSelected,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: isSelected
            ? const Icon(Icons.radio_button_checked, color: kBlue)
            : const Icon(Icons.radio_button_unchecked),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}
