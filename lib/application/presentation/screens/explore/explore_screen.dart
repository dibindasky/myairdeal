import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/city_cards_builder.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/pageview_builder.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/spacial_offers_builder.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/tabs.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/text_field.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenExplore extends StatefulWidget {
  const ScreenExplore({Key? key}) : super(key: key);

  @override
  State<ScreenExplore> createState() => _ScreenExploreState();
}

class _ScreenExploreState extends State<ScreenExplore> {
  late PageController pageController;
  double pageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8)
      ..addListener(() {
        setState(() {
          pageValue = pageController.page!;
        });
      });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight10,
                  const ExploreTextField(),
                  const Tabs(),
                  CityCardsBuilder(pageController: pageController),
                  PageviewBuilder(
                    pageController: pageController,
                    pageValue: pageValue,
                  ),
                ],
              ),
              const SpacialOffersBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
