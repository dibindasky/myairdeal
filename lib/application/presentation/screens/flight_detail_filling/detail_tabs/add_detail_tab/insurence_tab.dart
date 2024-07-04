import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/travel_insurence_cntainer.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/confirm_bottomsheet.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class InsurenceTab extends StatelessWidget {
  const InsurenceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        const TravelInsurenceContainer(),
        kHeight50,
        BottomButton(
          onTap: () {
            showModalBottomSheet(
              enableDrag: true,
              context: context,
              builder: (context) => const ConfrimBottomSheet(),
            );
          },
        ),
        kHeight15
      ],
    );
  }
}
