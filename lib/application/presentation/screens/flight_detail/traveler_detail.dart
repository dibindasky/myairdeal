import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_widgets/add_details_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_widgets/review_name_bootom_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_widgets/saved_detail_builder.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_widgets/traveler_tabs.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenTravelerDetails extends StatelessWidget {
  const ScreenTravelerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(heading: 'Traveler Details'),
          kHeight15,
          const TravelerTabs(),
          GetBuilder<TravellerController>(builder: (controller) {
            if (controller.travelerTab == 'Add Details') {
              return const AddDetailsSection();
            }
            return const SavedDetailBuilder();
          }),
          kHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: EventButton(
              hieght: 40.h,
              text: 'Proceed',
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: knill,
                  context: context,
                  builder: (context) => const ReviewNameBottomSheet(),
                );
              },
            ),
          ),
          kHeight30,
        ],
      ),
    );
  }
}
