import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/add_on_add_gst_card.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/air_india_contaier.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/promo_code.dontainer.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/travel_insurence_cntainer.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'widgets/sub_total.dart';

class ScreenReviewFlightDetails extends StatelessWidget {
  const ScreenReviewFlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DetailAppBar(heading: 'Review Flight Details'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const AirIndiaDetailCard(),
                  kHeight20,
                  const PromoCodeContainer(),
                  kHeight20,
                  const TravelInsurenceContainer(),
                  const AddOnesContainer(),
                  const Divider(),
                  const SubToTalContainer(),
                  kHeight15
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
