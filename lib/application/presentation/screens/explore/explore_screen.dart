import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/city_cards_builder.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/spacial_offers_builder.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/tabs.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/text_field.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

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
                  const CityCardsBuilder(),
                  FlightCard(image: mumbai),
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

class FlightCard extends StatelessWidget {
  const FlightCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight15,
          Stack(
            children: [
              ClipRRect(
                borderRadius: kRadius15,
                child: Stack(
                  children: [
                    Image.asset(
                      image,
                      height: 290.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 0,
                      right: 0.h,
                      bottom: 10.h,
                      child: Column(
                        children: [
                          const Text(
                            'Mumbai TO Banglure',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          kHeight10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('18 Apr - 25 Apr'),
                              kWidth10,
                              const Text('•'),
                              kWidth10,
                              const Text('Round Trip'),
                            ],
                          ),
                          kHeight15,
                          Center(
                            child: Container(
                              width: 100.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: kWhite)),
                              child: const Center(child: Text('Book Now')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Row(
                  children: [
                    Icon(Icons.wb_sunny, color: kYellow),
                    kWidth5,
                    const Text('21.7 °C'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
