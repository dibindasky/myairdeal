import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/booking_qurreys_sections.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/login_or_signup_card_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/recent_search_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/search_card_flight_section.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Scaffold(
      body: SingleChildScrollView(
        controller: Get.find<HomeController>().homeScrollController,
        child: Column(
          children: [
            HomeHeaderSection(
              heading: 'My Air Deal',
              onTap: () {
                Get.toNamed(Routes.notificationPage);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  kHeight20,
                  Obx(() {
                    return controller.clearingBool.value
                        ? const HorizontalShimmerSkeleton(
                            itemCount: 1,
                            scrollDirection: Axis.vertical,
                            height: 300,
                            width: double.infinity,
                          )
                        : const FlightSearchCardHome();
                  }),
                  kHeight10,
                  GetBuilder<AuthController>(builder: (controller) {
                    if (!controller.loginOrNot.value) {
                      return const LogInOrSignUpCard();
                    }
                    return kEmpty;
                  }),
                  kHeight10,
                  const BookingIssuesQuerySection(),
                  const RecentSearchSection(),
                  // const CurrentOffersSection(),
                ],
              ),
            ),
            kHeight20,
          ],
        ),
      ),
    );
  }
}
