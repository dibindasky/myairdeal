import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenProfileEdit extends StatelessWidget {
  const ScreenProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final name = Get.find<AuthController>().firstName.text.length >= 2
        ? Get.find<AuthController>().firstName.text.substring(0, 2)
        : '';
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<AuthController>().getUserInfo();
    });
    return Scaffold(
      body: GetBuilder<AuthController>(builder: (controller) {
        return ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DetailAppBar(
              heading: 'User profile',
              backButton: true,
              topGap: kHeight10,
            ),
            kHeight50,
            AnimatedGrowShrinkContainer(
              child: CircleAvatar(
                backgroundColor: kBlueLight,
                radius: 58,
                child: CircleAvatar(
                  backgroundColor: kBluePrimary,
                  radius: 50,
                  child: name == ''
                      ? const Icon(
                          size: 50,
                          Icons.person,
                          color: kBlueLight,
                        )
                      : Text(
                          name.toUpperCase(),
                          style: textThinStyle1.copyWith(
                            fontSize: 30.sp,
                            color: kWhite,
                          ),
                        ),
                ),
              ),
            ),
            kHeight15,
            ProfileField(
              data: controller.userCreationResponceModel.value.firstName ?? '',
              label: 'First name',
              value: 'name',
              iconImage: profileIcon,
            ),
            ProfileField(
              data: controller.userCreationResponceModel.value.lastName ?? '',
              label: 'Last name',
              value: '',
              iconImage: profileIcon,
            ),
            ProfileField(
              data: controller.userCreationResponceModel.value.email ?? '',
              label: 'Email ',
              value: '@gmail.com',
              iconImage: smsIcon,
            ),
            ProfileField(
              data: controller.userCreationResponceModel.value.phone ?? '',
              label: 'Phone Number',
              value: 'xxxxxxxx',
              iconImage: smsIcon,
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
        );
      }),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String value;
  final String iconImage;
  final String? suffixImage;
  final String? data;

  const ProfileField({
    super.key,
    required this.label,
    this.data,
    required this.value,
    required this.iconImage,
    this.suffixImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: textStyle1.copyWith(fontSize: 14.sp)),
          kHeight5,
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: kBlack), borderRadius: kRadius10),
            height: 40.h,
            child: Row(
              children: [
                kWidth10,
                Image.asset(
                  iconImage,
                  height: 18.h,
                  fit: BoxFit.cover,
                ),
                kWidth10,
                Text(data ?? '')
              ],
            ),
          ),
          // CustomTextField(
          //   //controller: data,
          //   enabledBorder:
          //       const OutlineInputBorder(borderSide: BorderSide(width: .3)),
          //   suffixIcon: suffixImage != null
          //       ? Padding(
          //           padding: const EdgeInsets.all(13.0),
          //           child: Image.asset(
          //             suffixImage!,
          //             height: 4.h,
          //             width: 5.w,
          //             fit: BoxFit.cover,
          //           ),
          //         )
          //       : null,
          //   onTapOutside: () => FocusScope.of(context).unfocus(),
          //   hintText: value,
          //   fillColor: kGreyLight,
          //   prefixIcon: Padding(
          //     padding: const EdgeInsets.all(13.0),
          //     child: Image.asset(
          //       iconImage,
          //       height: 4.h,
          //       width: 5.w,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
