import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/account/edit_profile.dart';
import 'package:myairdeal/application/presentation/screens/account/notification_setup.dart';
import 'package:myairdeal/application/presentation/screens/account/secuurity_screen.dart';
import 'package:myairdeal/application/presentation/screens/account/widgets/edit_profile.dart';
import 'package:myairdeal/application/presentation/screens/auth/goto_home_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/al_most_done.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/otp_screen.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/fare_rule.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/bookings_screen.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/invoice_detail.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/ticket_cancel/ticket_cancelation.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/view_amendment_status/view_amendment_status.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/flight_detail_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/traveler_widgets/saved_detail_builder.dart';
import 'package:myairdeal/application/presentation/screens/navbar/navbar.dart';
import 'package:myairdeal/application/presentation/screens/notification/notification_screen.dart';
import 'package:myairdeal/application/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:myairdeal/application/presentation/screens/payment/sucess_screen.dart';
import 'package:myairdeal/application/presentation/screens/refunds/refund_screen.dart';
import 'package:myairdeal/application/presentation/screens/search/airport_search.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/review_detail.dart';
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
import 'package:myairdeal/domain/core/binding/talk_to_us_controller_binding.dart';
import 'package:myairdeal/domain/core/binding/ticket_cancellation_binding.dart';
import 'package:myairdeal/domain/core/binding/traveller_controller_binding.dart';

class GetXRouterConfig {
  static final List<GetPage> routes = [
    GetPage(
      // bindings: [TravellerBinding(),BookingBinding(),SeatBinding(),FlightSortBinding()],
      binding: AuthBinding(),
      name: Routes.initial,
      // page: () => const ScreenFlightDetail(),
      page: () => const ScreenSplash(),
    ),
    GetPage(
      binding: AuthBinding(),
      name: Routes.onboard,
      page: () => const OnBoardInitail(),
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
      name: Routes.viewAmendmetStatus,
      page: () => const ScreenViewAmendMentStatus(),
    ),
    GetPage(
      bindings: [
        TravellerBinding(),
        PaymentBinding(),
      ],
      name: Routes.flightDetailFillling,
      page: () => const ScreenFlightDetail(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ScreenProfile(),
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
      name: Routes.savedPassengers,
      page: () => const ScreenSavedPassengers(),
    ),
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
      bindings: [
        BookingBinding(),
        RaiceTicketBinding(),
        TicketCancellationBinding()
      ],
      name: Routes.invoice,
      page: () => const ScreenInvoiceDetail(),
    ),
    GetPage(
      bindings: [PaymentBinding(), RaiceTicketBinding()],
      name: Routes.paymentSucess,
      page: () => const ScreenSuccessPage(),
    ),
    GetPage(
      name: Routes.fareRule,
      page: () => const FareRulesScreen(),
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
    GetPage(
      bindings: [AuthBinding()],
      name: Routes.updateProfile,
      page: () => const ScreenEditProfile(),
    ),
  ];
}
