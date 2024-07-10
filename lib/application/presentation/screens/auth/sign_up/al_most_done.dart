import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ScreenAccountCreationForm extends StatelessWidget {
  ScreenAccountCreationForm({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kHeight50,
                kHeight10,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                kHeight20,
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Almost Done!',
                        style: textHeadStyle1.copyWith(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      kHeight10,
                      Text(
                        'Please enter your Details in the following Section',
                        style: textThinStyle1.copyWith(color: kGrey),
                      ),
                      kHeight20,
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: kBlue),
                          borderRadius: kRadius10,
                          color: kWhite,
                        ),
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              3,
                              (index) => CustomRadioButton(
                                selected:
                                    index == authController.genderType.value,
                                onChanged: () {
                                  authController.changeGenderType(index);
                                },
                                text: authController.genderList[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                      kHeight10,
                      Text(
                        'First Name',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        controller: authController.firstName,
                        isBorder: true,
                        borderRadius: 14,
                        textCapitalization: TextCapitalization.words,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: .3),
                            borderRadius: kRadius15),
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        hintText: 'first Name',
                        fillColor: kWhite,
                      ),
                      kHeight10,
                      Text(
                        'Last Name',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        controller: authController.lastName,
                        isBorder: true,
                        borderRadius: 14,
                        textCapitalization: TextCapitalization.words,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: .3),
                            borderRadius: kRadius15),
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        hintText: 'Last Name',
                        fillColor: kWhite,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        controller: authController.email,
                        isBorder: true,
                        borderRadius: 14,
                        textCapitalization: TextCapitalization.words,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: .3),
                            borderRadius: kRadius15),
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        hintText: 'Enter Email',
                        fillColor: kWhite,
                      ),
                      kHeight10,
                      kHeight50,
                      EventIconButton(
                        width: 360.w,
                        text: 'Create Account',
                        suffixIcon: Image.asset(tickIcon, height: 15.h),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            authController.userCreation();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
