import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/account/widgets/settings_tile.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenAccountPage extends StatelessWidget {
  const ScreenAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Account'),
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
                      onTap: () {},
                    ),
                    SettingsTile(
                      title: 'Notifications',
                      onTap: () {
                        // Handle Notifications tap
                      },
                    ),
                  ],
                ),
                SettingsSection(
                  title: 'Preferences',
                  tiles: [
                    SettingsTile(
                      title: 'Legal and Policies',
                      onTap: () {
                        // Handle Legal and Policies tap
                      },
                    ),
                    SettingsTile(
                      title: 'Help & Support',
                      onTap: () {
                        // Handle Help & Support tap
                      },
                    ),
                    SettingsTile(
                      title: 'Logout',
                      color: kRed,
                      onTap: () {
                        // Handle Logout tap
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
