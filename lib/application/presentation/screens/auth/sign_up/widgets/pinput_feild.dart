import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:pinput/pinput.dart';

class PinEnterField extends StatelessWidget {
  PinEnterField({super.key});
  //final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Pinput(
      //controller: controller.otpNumber,
      onChanged: (value) {},
      onLongPress: () {
        print('onLongPress');
      },
      onCompleted: (value) {
        print('Combleted');
      },
      length: 6,
      focusedPinTheme: PinTheme(
        width: 55,
        height: 55,
        textStyle: textStyle1,
        decoration: BoxDecoration(
          color: kBlue.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlueAccent.withOpacity(0.1),
              offset: const Offset(0, 6),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
          border: Border.all(color: kBlue),
          borderRadius: kRadius5,
        ),
      ),
      defaultPinTheme: PinTheme(
        width: 55,
        height: 55,
        textStyle: textStyle1,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kBlue.withOpacity(0.03),
              offset: const Offset(0, 6),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
          border: Border.all(color: kBlueDark),
          borderRadius: kRadius5,
        ),
      ),
    );
  }
}
