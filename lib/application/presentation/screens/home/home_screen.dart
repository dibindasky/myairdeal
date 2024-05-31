import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/booking_qurreys_sections.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/curent_offers_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/login_or_signup_card_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/recent_search_section.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/search_card_flight_section.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_icon_button_custom.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeaderSection(),
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

