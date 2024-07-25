import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final Color activeColor;

  const CustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor = kBluePrimary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1, // Adjust the scale to reduce the padding
      child: Checkbox(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        materialTapTargetSize:
            MaterialTapTargetSize.shrinkWrap, // Reduce the tap target size
      ),
    );
  }
}
