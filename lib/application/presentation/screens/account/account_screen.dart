import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/account/widgets/settings_tile.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/confirm_dailogue/confirm_dailogue.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenAccountPage extends StatelessWidget {
  const ScreenAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<AuthController>().logOrNot();
    });
    return Scaffold(
      body: Column(
        children: [
          DetailAppBar(
              heading: 'Account', backButton: false, topGap: kHeight10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Obx(
                  () {
                    return controller.loginOrNot.value
                        ? SettingsSection(
                            title: 'General',
                            tiles: [
                              SettingsTile(
                                title: 'User Profile',
                                onTap: () {
                                  Get.toNamed(Routes.profile);
                                },
                              ),
                            ],
                          )
                        : kEmpty;
                  },
                ),
                kHeight20,
                SettingsSection(
                  title: 'Preferences',
                  tiles: [
                    SettingsTile(
                      title: 'Legal and Policies',
                      onTap: () {},
                    ),
                    SettingsTile(
                      title: 'Help & Support',
                      onTap: () {},
                    ),
                    Obx(() {
                      return controller.loginOrNot.value
                          ? SettingsTile(
                              title: 'Log-Out',
                              color: kRed,
                              onTap: () {
                                showConfirmationDialog(
                                  context: context,
                                  heading:
                                      'Are you sure do you want to Log-Out from MY AIRDEAL',
                                  onPressed: () {
                                    Get.find<NavBarController>()
                                        .bottomIndex
                                        .value = 0;
                                    controller.logOut();
                                    Get.find<BookingController>().clear();
                                  },
                                );
                              },
                            )
                          : kEmpty;
                    })
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> tiles;

  const SettingsSection({
    super.key,
    required this.title,
    required this.tiles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title,
            style: textHeadStyle1.copyWith(fontSize: 15.sp),
          ),
        ),
        kHeight10,
        ...tiles,
      ],
    );
  }
}
