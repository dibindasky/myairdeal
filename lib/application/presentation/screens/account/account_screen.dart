import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
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
    final loginContrller = Get.find<AuthController>();
    return Scaffold(
      body: Column(
        children: [
          DetailAppBar(
              heading: 'Account', backButton: false, topGap: kHeight10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SettingsSection(
                  title: 'General',
                  tiles: [
                    SettingsTile(
                      title: 'Edit Profile',
                      onTap: () {
                        Get.toNamed(Routes.editProfile);
                      },
                    ),
                    SettingsTile(
                      title: 'Security',
                      onTap: () {
                        Get.toNamed(Routes.security);
                      },
                    ),
                    SettingsTile(
                      title: 'Notifications',
                      onTap: () {
                        Get.toNamed(Routes.notificationSetup);
                      },
                    ),
                  ],
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
                    SettingsTile(
                      title: 'Logout',
                      color: kRed,
                      onTap: () {
                        showConfirmationDialog(
                          context: context,
                          heading:
                              'Are you sure do you want to logout from MYAIRDEAL',
                          onPressed: () {
                            loginContrller.logOut();
                          },
                        );
                      },
                    ),
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
  final List<SettingsTile> tiles;

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
        ...tiles,
      ],
    );
  }
}
