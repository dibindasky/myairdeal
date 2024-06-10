import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_widgets/saved_detailcard.dart';

class SavedDetailBuilder extends StatelessWidget {
  const SavedDetailBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GetBuilder<TravellerController>(builder: (context) {
          return SavedDetailsCard(index: index);
        });
      },
    );
  }
}
