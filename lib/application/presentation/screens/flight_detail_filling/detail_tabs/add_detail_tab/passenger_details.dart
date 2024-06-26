import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_field_container.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';

class PassengerDetailsContainer extends StatelessWidget {
  const PassengerDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Passenger details', style: textStyle1),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(5),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) => CustomExpansionTile(
            isBorder: false,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 6.w),
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                border: Border.all(color: kBlue),
              ),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Text('Adult ${index + 1}'),
              ),
            ),
            children: const [
              DetailContainer(),
            ],
          ),
        ),
      ],
    );
  }
}
