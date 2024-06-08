import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/booking_qurreys_sections.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/curent_offers_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/login_or_signup_card_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/recent_search_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/search_card_flight_section.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderSection(
              heading: 'My Air deals',
              onTap: () {
                Get.toNamed(Routes.notificationPage);
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  kHeight20,
                  const FlightSearchCardHome(),
                  kHeight10,
                  const LogInOrSignUpCard(),
                  kHeight10,
                  const BookingIssuesQuerySection(),
                  const RecentSearchSection(),
                  const CurrentOffersSection(),
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
