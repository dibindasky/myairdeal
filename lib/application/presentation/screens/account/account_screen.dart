import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/account/widgets/settings_tile.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class ScreenAccountPage extends StatelessWidget {
  const ScreenAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: AppBarCustomShape(
              bottomGap: kHeight20,
              topGap: kHeight30,
              backGroundImage: false,
              child: const Row(
                children: [
                  Text('Account'),
                ],
              ),
            ),
          ),
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
                      onTap: () {},
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

  const SettingsSection({super.key, required this.title, required this.tiles});

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
