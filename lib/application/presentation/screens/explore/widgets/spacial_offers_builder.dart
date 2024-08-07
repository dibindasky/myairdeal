import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';

class SpacialOffersBuilder extends StatelessWidget {
  const SpacialOffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight30,
        Text('Spacial Offers',
            style: textStyle1.copyWith(fontWeight: FontWeight.w800)),
        kHeight5,
        ListView.separated(
          separatorBuilder: (context, index) => kHeight10,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) => FlightTicketCard(
            flightTicketCardEnum: FlightTicketCardEnum.specialOffers,
            buttonOnTap: () {
              Get.toNamed(Routes.flightDetailFillling);
            },
          ),
        ),
      ],
    );
  }
}
