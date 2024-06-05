import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Security'),
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
                    const Text('Face ID'),
                    const Spacer(),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    )
                  ],
                ),
                const Divider(),
                kHeight5,
                Row(
                  children: [
                    const Text('Finger Print'),
                    const Spacer(),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    )
                  ],
                ),
                kHeight5,
                const Divider(),
                Row(
                  children: [
                    const Text('Password'),
                    const Spacer(),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    )
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
