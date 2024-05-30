import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('ScreenHomePage',style: textHeadStyle1),
          Text('ScreenHomePage',style: textStyle1),
          Text('ScreenHomePage',style: textThinStyle1),
        ],
      ),
    );
  }
}