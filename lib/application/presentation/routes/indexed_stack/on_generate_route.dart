import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/account/account_screen.dart';
import 'package:myairdeal/application/presentation/screens/account/profile.dart';
import 'package:myairdeal/application/presentation/screens/account/notification_setup.dart';
import 'package:myairdeal/application/presentation/screens/account/secuurity_screen.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/invoice_detail.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/flight_detail_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/review_detail.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/flight_Sort_page.dart';
import 'package:myairdeal/application/presentation/screens/home/home_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (ctx) => const ScreenHomePage());
      case Routes.searchSortFlight:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenFlightTicketSort());
      // case Routes.commingSoon:
      //   return arguments is String
      //       ? MaterialPageRoute(
      //           builder: (ctx) => ScreenCommingSoon(image: arguments))
      //       : _errorScreen();
      case Routes.flightDetailFillling:
        return MaterialPageRoute(builder: (ctx) => const ScreenFlightDetail());
      case Routes.reviewFlightDetail:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenReviewFlightDetails());

      case Routes.account:
        return MaterialPageRoute(builder: (ctx) => const ScreenAccountPage());

      case Routes.profile:
        return MaterialPageRoute(builder: (ctx) => const ScreenProfile());
      case Routes.security:
        return MaterialPageRoute(builder: (ctx) => const ScreenSecurity());
      case Routes.bookings:
        return MaterialPageRoute(builder: (ctx) => const ScreenBookings());
      case Routes.invoice:
        return MaterialPageRoute(builder: (ctx) => const ScreenInvoiceDetail());
      case Routes.explore:
        return MaterialPageRoute(builder: (ctx) => const ScreenExplore());
      case Routes.notificationSetup:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenNotificationSetup());
      default:
        return _errorScreen();
    }
  }

  Route _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: GestureDetector(
          onTap: () {
            Get.offAllNamed(Routes.initial);
          },
          child: const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text("Tap to restart application"),
            ),
          ),
        ),
      );
    });
  }
}
