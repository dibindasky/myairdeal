import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/account/edit_profile.dart';
import 'package:myairdeal/application/presentation/screens/account/notification_setup.dart';
import 'package:myairdeal/application/presentation/screens/account/secuurity_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/goto_home_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/al_most_done.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/otp_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/invoice_detail.dart';
import 'package:myairdeal/application/presentation/screens/bookings/ticket_cancel/ticket_cancelation.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/flight_detail_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/traveler_detail.dart';
import 'package:myairdeal/application/presentation/screens/navbar/navbar.dart';
import 'package:myairdeal/application/presentation/screens/notification/notification_screen.dart';
import 'package:myairdeal/application/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:myairdeal/application/presentation/screens/payment/sucess_screen.dart';
import 'package:myairdeal/application/presentation/screens/refunds/refund_screen.dart';
import 'package:myairdeal/application/presentation/screens/search/airport_search.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/review_detail.dart';
import 'package:myairdeal/application/presentation/screens/seats/seats_selection.dart';
import 'package:myairdeal/application/presentation/screens/splash/splash_screen.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/chat_page.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/tab.dart';
import 'package:myairdeal/domain/core/binding/auth_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/booking_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/explore_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/flight_sort_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/home_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/nav_bar_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/notification_binding.dart';
import 'package:myairdeal/domain/core/binding/payment_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/raice_ticket_binding.dart';
import 'package:myairdeal/domain/core/binding/seat_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/talk_to_us_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/ticket_cancellation_binding.dart';
import 'package:myairdeal/domain/core/binding/traveller_controller_binding.dart';

class GetXRouterConfig {
  static final List<GetPage> routes = [
    GetPage(
      binding: AuthBinding(),
      name: Routes.initial,
      page: () => const ScreenSplash(),
    ),
    GetPage(
      binding: AuthBinding(),
      name: Routes.onboard,
      page: () => const ScreenOnBoard(),
    ),
    GetPage(
      binding: AuthBinding(),
      name: Routes.signUp,
      page: () => const ScreenSignUp(),
    ),
    GetPage(
      name: Routes.goToHomePage,
      page: () => const GoTOHOmeScreen(),
    ),
    GetPage(
      binding: AuthBinding(),
      name: Routes.otp,
      page: () => const ScreenOTP(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => const ScreenSignIn(),
    ),
    GetPage(
      name: Routes.alMostDone,
      bindings: [AuthBinding()],
      page: () => ScreenAccountCreationForm(),
    ),
    GetPage(
      name: Routes.ticketCancel,
      bindings: [TicketCancellationBinding()],
      page: () => const ScreenTicetCanceallation(),
    ),

    GetPage(
      bindings: [
        AuthBinding(),
        NavBarBinding(),
        FlightSortBinding(),
        PaymentBinding(),
        ExploreBinding(),
        BookingBinding(),
        TravellerBinding(),
        HomeBinding()
      ],
      name: Routes.bottomBar,
      page: () => const ScreenNavbar(),
    ),
    GetPage(
      bindings: [HomeBinding(), FlightSortBinding()],
      name: Routes.airportSearch,
      page: () => const ScreenAirportSearch(),
    ),
    GetPage(
      name: Routes.reviewFlightDetail,
      page: () => const ScreenReviewFlightDetails(),
    ),
    GetPage(
      bindings: [
        SeatBinding(),
        TravellerBinding(),
        PaymentBinding(),
      ],
      name: Routes.flightDetailFillling,
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
    // GetPage(
    //   name: Routes.payment,
    //   page: () => const ScreenPaymentMethods(),
    // ),
    GetPage(
      binding: BookingBinding(),
      name: Routes.bookings,
      page: () => const ScreenBookings(),
    ),
    GetPage(
      binding: ExploreBinding(),
      name: Routes.explore,
      page: () => const ScreenExplore(),
    ),
    GetPage(
      bindings: [BookingBinding(), RaiceTicketBinding()],
      name: Routes.invoice,
      page: () => const ScreenInvoiceDetail(),
    ),
    GetPage(
      binding: SeatBinding(),
      name: Routes.seatSelection,
      page: () => const ScreenSeatSelection(),
    ),
    GetPage(
      binding: TravellerBinding(),
      name: Routes.travelerDetails,
      page: () => const ScreenTravelerDetails(),
    ),
    GetPage(
      binding: PaymentBinding(),
      name: Routes.paymentSucess,
      page: () => const ScreenSuccessPage(),
    ),
    GetPage(
      binding: TalkToUsBinding(),
      name: Routes.chatTab,
      page: () => const ScreenTab(),
    ),
    GetPage(
      binding: TalkToUsBinding(),
      name: Routes.chatPage,
      page: () => const ScreenChatPage(),
    ),
    GetPage(
      name: Routes.refundsPage,
      page: () => ScreenRefundPage(),
    ),
    GetPage(
      binding: NotificationBinding(),
      name: Routes.notificationPage,
      page: () => const ScreenNotification(),
    ),
  ];
}
