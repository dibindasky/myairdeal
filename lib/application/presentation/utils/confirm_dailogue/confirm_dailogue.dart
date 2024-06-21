import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

showConfirmationDialog({
  required BuildContext context,
  required String heading,
  Color buttonColor = kBluePrimary,
  String? operationButtonName,
  String cancelButtonText = 'Cancel',
  VoidCallback? onCancelTap,
  Widget? content,
  void Function()? onPressed,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              heading,
              style: textHeadStyle1,
            ),
            kHeight20,
            content ?? kEmpty,
            kHeight20,
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: kBluePrimary)),
                      onPressed: () {
                        Navigator.pop(context);
                        if (onCancelTap != null) {
                          onCancelTap();
                        }
                      },
                      child: Text(
                        cancelButtonText,
                        style: textThinStyle1.copyWith(color: kBluePrimary),
                      )),
                  kWidth20,
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: buttonColor)),
                    onPressed: onPressed ?? () => Navigator.pop(context),
                    child: Text(
                      operationButtonName ?? 'Yes',
                      style: textThinStyle1.copyWith(color: buttonColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
