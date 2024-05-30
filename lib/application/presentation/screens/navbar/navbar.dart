import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/navbar_controller.dart';
import 'package:myairdeal/application/presentation/screens/account/account_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/screens/home/home_screen.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/talk_to_us_page.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class ScreenNavbar extends StatelessWidget {
  const ScreenNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> tabItems = [
      const ScreenHomePage(),
      const ScreenBookings(),
      const ScreenExplore(),
      const ScreenTalkToUsPage(),
      const ScreenAccountPage()
    ];

    return Scaffold(
      body: Obx(() => tabItems[Get.find<NavBarController>().bottomIndex.value]),
      bottomNavigationBar: CurvedNavigationBar(
        
        backgroundColor: knill,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Iconsax.home),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Iconsax.ticket ),
            label: 'Bookings',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          CurvedNavigationBarItem(
            child: Icon(Iconsax.messages_1),
            label: 'Talk to us',
          ),
          CurvedNavigationBarItem(
            child: Icon(Iconsax.profile_tick),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          // Handle button tap
          Get.find<NavBarController>().chageIndex(index);
        },
      ),
    );
  }
}
