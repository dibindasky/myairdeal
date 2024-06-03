import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/al_most_done.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/otp_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:myairdeal/application/presentation/screens/navbar/navbar.dart';
import 'package:myairdeal/application/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:myairdeal/application/presentation/screens/search/airport_search.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/review_detail.dart';
import 'package:myairdeal/application/presentation/screens/splash/splash_screen.dart';

class GetXRouterConfig {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => const ScreenSplash(),
    ),
    GetPage(
      name: Routes.onboard,
      page: () => const OnBoardScreen(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Routes.otp,
      page: () => OTPScreen(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: Routes.alMostDone,
      page: () => AccountCreationForm(),
    ),
    GetPage(
      name: Routes.bottomBar,
      page: () => const ScreenNavbar(),
    ),
    GetPage(
      name: Routes.airportSearch,
      page: () => const ScreenAirportSearch(), 
    ),
    GetPage(
      name: Routes.flightDetail,
      page: () => FlightDetailsScreen(),
    ),
  ];
}
