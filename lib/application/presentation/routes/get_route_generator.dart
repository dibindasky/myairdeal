import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/account/edit_profile.dart';
import 'package:myairdeal/application/presentation/screens/account/notification_setup.dart';
import 'package:myairdeal/application/presentation/screens/account/secuurity_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/al_most_done.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/otp_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/invoice_dtail.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/flight_detail.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_detail.dart';
import 'package:myairdeal/application/presentation/screens/navbar/navbar.dart';
import 'package:myairdeal/application/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:myairdeal/application/presentation/screens/payment/payement.dart';
import 'package:myairdeal/application/presentation/screens/payment/sucess.dart';
import 'package:myairdeal/application/presentation/screens/search/airport_search.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/review_detail.dart';
import 'package:myairdeal/application/presentation/screens/seats/seats_selection.dart';
import 'package:myairdeal/application/presentation/screens/splash/splash_screen.dart';

class GetXRouterConfig {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => const ScreenSplash(),
    ),
    GetPage(
      name: Routes.onboard,
      page: () => const ScreenOnBoard(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => ScreenSignUp(),
    ),
    GetPage(
      name: Routes.otp,
      page: () => ScreenOTP(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => const ScreenSignIn(),
    ),
    GetPage(
      name: Routes.alMostDone,
      page: () => ScreenAccountCreationForm(),
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
      name: Routes.reviewFlightDetail,
      page: () => const ScreenReviewFlightDetails(),
    ),
    GetPage(
      name: Routes.flightDetail,
      page: () => const ScreenFlightDetail(),
    ),
    GetPage(
      name: Routes.editProfile,
      page: () => const ScreenProfileEdit(),
    ),
    GetPage(
      name: Routes.security,
      page: () => const ScreenSecurity(),
    ),
    GetPage(
      name: Routes.notificationSetup,
      page: () => const ScreenNotificationSetup(),
    ),
    GetPage(
      name: Routes.payment,
      page: () => ScreenPaymentMethods(),
    ),
    GetPage(
      name: Routes.bookings,
      page: () => const ScreenBookings(),
    ),
    GetPage(
      name: Routes.explore,
      page: () => const ScreenExplore(),
    ),
    GetPage(
      name: Routes.invoice,
      page: () => const ScreenInvoiceDetail(),
    ),
    GetPage(
      name: Routes.seatSelection,
      page: () => const ScreenSeatSelection(),
    ),
    GetPage(
      name: Routes.travelerDetails,
      page: () => ScreenTravelerDetails(),
    ),
    GetPage(
      name: Routes.paymentSucess,
      page: () => const ScreenSuccessPage(),
    ),
  ];
}
