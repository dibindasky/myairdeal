import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenNotificationSetup extends StatelessWidget {
  const ScreenNotificationSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(
            heading: 'Notification',
          ),
          kHeight20,
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: .3),
              borderRadius: kRadius15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Payment'),
                    const Spacer(),
                    Switch(
                      inactiveTrackColor: kGrey,
                      activeTrackColor: kBlueDark,
                      activeColor: kWhite,
                      value: true,
                      onChanged: (value) {},
                    )
                  ],
                ),
                const Divider(),
                kHeight5,
                Row(
                  children: [
                    const Text('Schedule'),
                    const Spacer(),
                    Switch(
                      inactiveTrackColor: kGrey,
                      activeTrackColor: kBlueDark,
                      activeColor: kWhite,
                      value: true,
                      onChanged: (value) {},
                    )
                  ],
                ),
                kHeight5,
                const Divider(),
                Row(
                  children: [
                    const Text('Cancellation'),
                    const Spacer(),
                    Switch(
                      inactiveTrackColor: kGrey,
                      activeTrackColor: kBlueDark,
                      activeColor: kWhite,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Text('Notification'),
                    const Spacer(),
                    Switch(
                      inactiveTrackColor: kGrey,
                      activeTrackColor: kBlueDark,
                      activeColor: kWhite,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
