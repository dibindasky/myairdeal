import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final Color? activeColor;

  const CustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Transform.scale(
      scale: 1, // Adjust the scale to reduce the padding
      child: Checkbox(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor ?? themeController.secondaryColor,
        materialTapTargetSize:
            MaterialTapTargetSize.shrinkWrap, // Reduce the tap target size
      ),
    );
  }
}
