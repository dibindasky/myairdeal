import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class AccountCreationForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AccountCreationForm({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        fillColor: knill,
                        controller: TextEditingController(),
                        hintText: 'User Name',
                        showUnderline: false,
                        validate: Validate.none,
                      ),
                      kHeight10,
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        fillColor: knill,
                        controller: TextEditingController(),
                        hintText: 'Enter Username',
                        showUnderline: false,
                        validate: Validate.none,
                      ),
                      kHeight10,
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        fillColor: knill,
                        password: TextEditingController(),
                        hintText: 'Enter Password',
                        showUnderline: false,
                        validate: Validate.none,
                        obscureText: true,
                      ),
                      kHeight10,
                      Text(
                        'Re-enter Password',
                        style: TextStyle(
                          fontSize: 13.sp,
                        ),
                      ),
                      kHeight5,
                      CustomTextField(
                        onTapOutside: () => FocusScope.of(context).unfocus(),
                        fillColor: knill,
                        password: TextEditingController(),
                        hintText: 'Enter Password',
                        showUnderline: false,
                        validate: Validate.none,
                        obscureText: true,
                      ),
                      kHeight40,
                      EventIconButton(
                        width: 360.w,
                        text: 'Create Account',
                        suffixIcon: SizedBox(
                          height: 15.h,
                          width: 15.w,
                          child: Image.asset(tickIcon),
                        ),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {}
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
