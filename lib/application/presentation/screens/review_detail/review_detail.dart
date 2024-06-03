import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/add_on_add_gst_card.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/air_india_contaier.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/promo_code.dontainer.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/travel_insurence_cntainer.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'widgets/sub_total.dart';

class FlightDetailsScreen extends StatefulWidget {
  const FlightDetailsScreen({super.key});

  @override
  _FlightDetailsScreenState createState() => _FlightDetailsScreenState();
}

class _FlightDetailsScreenState extends State<FlightDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DetailAppBar(),
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
                  const SubToTalContainer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
