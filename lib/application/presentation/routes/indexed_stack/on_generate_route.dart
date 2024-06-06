import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/account/account_screen.dart';
import 'package:myairdeal/application/presentation/screens/account/edit_profile.dart';
import 'package:myairdeal/application/presentation/screens/account/notification_setup.dart';
import 'package:myairdeal/application/presentation/screens/account/secuurity_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/invoice_dtail.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/flight_detail.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/review_detail.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/flight_Sort_page.dart';
import 'package:myairdeal/application/presentation/screens/home/home_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (ctx) => const ScreenHomePage());
      case Routes.searchSortFlight:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenFlightTicketSort());
      case Routes.flightDetail:
        return MaterialPageRoute(builder: (ctx) => const ScreenFlightDetail());
      case Routes.reviewFlightDetail:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenReviewFlightDetails());
      case Routes.travelerDetails:
        return MaterialPageRoute(builder: (ctx) => TravelerDetails());
      case Routes.account:
        return MaterialPageRoute(builder: (ctx) => const ScreenAccountPage());
      case Routes.editProfile:
        return MaterialPageRoute(builder: (ctx) => const ProfileEdit());
      case Routes.security:
        return MaterialPageRoute(builder: (ctx) => const SecurityScreen());
      case Routes.bookings:
        return MaterialPageRoute(builder: (ctx) => const ScreenBookings());
      case Routes.invoice:
        return MaterialPageRoute(builder: (ctx) => const InvoiceDetail());
      case Routes.explore:
        return MaterialPageRoute(builder: (ctx) => const ScreenExplore());
      case Routes.notificationSetup:
        return MaterialPageRoute(builder: (ctx) => const NotificationSetup());
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
        body: const Center(
          child: Text("Error while navigating"),
        ),
      );
    });
  }
}
