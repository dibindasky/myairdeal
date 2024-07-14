import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  final controller = Get.find<AuthController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getUserInfo(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DetailAppBar(
            heading: 'User Profile',
            backButton: true,
            topGap: kHeight10,
            action: IconButton(
              onPressed: () {
                Get.toNamed(Routes.updateProfile);
              },
              icon: Icon(
                Icons.edit,
                color: kWhite,
                size: 17.h,
              ),
            ),
          ),
          kHeight50,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Obx(() {
              String? name = controller.firstName.text.length == 2
                  ? controller.firstName.text.substring(0, 2)
                  : '';
              return Column(
                children: [
                  AnimatedGrowShrinkContainer(
                    milliseconds: 1000,
                    begin: .85,
                    end: 0.9,
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
                  kHeight5,
                  controller.isLoading.value
                      ? SizedBox(
                          height: 300.h,
                          child: const Center(
                              child: CircularProgressIndicator(
                                  color: kBluePrimary)))
                      : Column(
                          children: [
                            ProfileField(
                              data: controller.userCreationResponceModel.value
                                      .firstName ??
                                  '',
                              label: 'First name',
                              value: 'name',
                              iconImage: profileIcon,
                            ),
                            ProfileField(
                              data: controller.userCreationResponceModel.value
                                      .lastName ??
                                  '',
                              label: 'Last name',
                              value: '',
                              iconImage: profileIcon,
                            ),
                            ProfileField(
                              data: controller
                                      .userCreationResponceModel.value.email ??
                                  '',
                              label: 'Email ',
                              value: '@gmail.com',
                              iconImage: smsIcon,
                            ),
                            ProfileField(
                              data: controller
                                      .userCreationResponceModel.value.phone ??
                                  '',
                              label: 'Phone Number',
                              value: 'xxxxxxxxx',
                              iconImage: smsIcon,
                            ),
                            kHeight50,
                          ],
                        ),
                ],
              );
            }),
          ),
        ],
      ),
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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
        ],
      ),
    );
  }
}
