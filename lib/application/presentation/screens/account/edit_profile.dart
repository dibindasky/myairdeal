import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            kHeight50,
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5RSTnjCTlgRmF8wPPlCNrIsejlcjK-j037yiLr8C21tsSG3s-GRM5w4rc2Q&s',
              ),
            ),
            kHeight15,
            ProfileField(
              label: 'Username',
              value: 'Jayasuyrya',
              iconImage: profileIcon,
            ),
            ProfileField(
              label: 'Email or Phone Number',
              value: 'Suryaj8999@gmail.com',
              iconImage: smsIcon,
            ),
            ProfileField(
              label: 'Account Linked With',
              value: 'Google',
              iconImage: googleIcon,
              suffixImage: copyIcon,
            ),
            kHeight50,
            kHeight50,
            kHeight30,
            EventButton(
              width: 380.w,
              text: 'Change Now',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String value;
  final String iconImage;
  final String? suffixImage;

  const ProfileField({
    super.key,
    required this.label,
    required this.value,
    required this.iconImage,
    this.suffixImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: textStyle1.copyWith(fontSize: 14.sp)),
          kHeight5,
          CustomTextField(
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide(width: .3)),
            suffixIcon: suffixImage != null
                ? Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset(
                      suffixImage!,
                      height: 4.h,
                      width: 5.w,
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
            onTapOutside: () => FocusScope.of(context).unfocus(),
            hintText: value,
            fillColor: kGreyLight,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Image.asset(
                iconImage,
                height: 4.h,
                width: 5.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
