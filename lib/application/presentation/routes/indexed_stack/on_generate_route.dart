import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/flight_detail.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/review_detail.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/flight_Sort_page.dart';
import 'package:myairdeal/application/presentation/screens/home/home_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
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
