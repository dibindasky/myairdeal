import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';
import 'package:myairdeal/application/presentation/routes/indexed_stack/on_generate_route.dart';
import 'package:myairdeal/application/presentation/routes/route_service/route_service.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/account/account_screen.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/talk_to_us_page.dart';
import 'package:myairdeal/application/presentation/widgets/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class ScreenNavbar extends StatefulWidget {
  const ScreenNavbar({super.key});

  @override
  State<ScreenNavbar> createState() => _ScreenNavbarState();
}

class _ScreenNavbarState extends State<ScreenNavbar> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    // if current page is home page
    if (Get.find<HomeController>().navigationCheck == NavigationChecker.home) {
      // check for bottom bar index
      if (Get.find<NavBarController>().bottomIndex.value != 0) {
        Get.find<NavBarController>().chageIndex(0);
        return true;
      } else {
        if (isNotLastRouteInNestedStack(1)) {
          Get.back(id: 1);
          return true;
        }
      }
      // Get.back();
      return false;
    }
    // when the call come from search page
    else if (Get.find<HomeController>().navigationCheck ==
        NavigationChecker.search) {
      Get.find<FlightSortController>().stopSearchTimer();
      Get.back(id: 1);
      Get.find<HomeController>()
          .changeNavigationChecker(NavigationChecker.home);
    }
    // if call is from itinary booking section
    else if (Get.find<HomeController>().navigationCheck ==
        NavigationChecker.itinary) {
      final goback = Get.find<TravellerController>().backButtonPaymetPage();
      if (goback) {
        Get.find<HomeController>()
            .changeNavigationChecker(NavigationChecker.search);
        return false;
      }
    } // if call come from ticket invoice page
    else if (Get.find<HomeController>().navigationCheck ==
        NavigationChecker.ticket) {
      Get.back();
    } // if call from booking success page
    else if (Get.find<HomeController>().navigationCheck ==
        NavigationChecker.bookingSuccess) {
      Get.find<BookingController>().clearDataAfterBooking();
      Get.find<TravellerController>().clearDataAfterBooking();
      Get.find<FlightSortController>().clearDataAfterBooking();
      Get.find<BookingController>().getAllUpcomingBooking(true);
      Get.back();
      Get.find<HomeController>()
          .changeNavigationChecker(NavigationChecker.home);
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabItems = [
      Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.homePage,
        onGenerateRoute: RouteGenerator().onGenerateRoute,
      ),
      const ScreenBookings(),
      const ScreenTalkToUsPage(),
      const ScreenAccountPage()
    ];

    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: Get.find<NavBarController>().bottomIndex.value,
          children: tabItems,
        );
      }),
      bottomNavigationBar: Obx(() {
        final selectedIndex = Get.find<NavBarController>().bottomIndex.value;
        return CurvedNavigationBar(
          index: selectedIndex,
          backgroundColor: kGreyLightBackground,
          items: [
            CurvedNavigationBarItem(
              child: Icon(selectedIndex == 0 ? Iconsax.home1 : Iconsax.home),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                  selectedIndex == 1 ? Icons.airplane_ticket : Iconsax.ticket),
              label: 'Bookings',
            ),
            // CurvedNavigationBarItem(
            //   child: Icon(
            //       selectedIndex == 2 ? Icons.explore : Icons.explore_outlined),
            //   label: 'Explore',
            // ),
            CurvedNavigationBarItem(
              child: Icon(
                  selectedIndex == 2 ? Iconsax.messages5 : Iconsax.messages_1),
              label: 'Talk to us',
            ),
            CurvedNavigationBarItem(
              child: Icon(selectedIndex == 3
                  ? Iconsax.profile_tick5
                  : Iconsax.profile_tick),
              label: 'Account',
            ),
          ],
          onTap: (index) {
            if (index == 1) {
              Get.find<BookingController>().getAllUpcomingBooking(true);
              Get.find<BookingController>().getAllCombleteBooking(true);
            }
            Get.find<NavBarController>().chageIndex(index);
          },
        );
      }),
    );
  }
}

class CurvedNavigationBarItem {
  /// Icon of [CurvedNavigationBarItem].
  final Widget child;

  /// Text of [CurvedNavigationBarItem].
  final String? label;

  /// TextStyle for [label].
  final TextStyle? labelStyle;

  const CurvedNavigationBarItem({
    required this.child,
    this.label,
    this.labelStyle,
  });
}
