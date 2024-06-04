import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:myairdeal/application/controller/explore_controller.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/flight_ticket_card.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/page_view_image.dart';
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
                  TextFormField(
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    enabled: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: kGreylowLight,
                      filled: true,
                      hintText: 'Search any Fight',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: kGreyDark,
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: kGreyDark,
                      ),
                    ),
                  ),
                  kHeight10,
                  Text(
                    'Popular Flights',
                    style: textHeadStyle1,
                  ),
                  kHeight10,
                  GetBuilder<ExpolreController>(
                    builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30.h,
                            width: 330.w,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        bottomLeft: Radius.circular(24)),
                                    child: ColoredBox(
                                      color: controller.selectedTab.value ==
                                              'Domestic'
                                          ? kBluePrimary
                                          : kGreylowLight,
                                      child: TextButton(
                                        onPressed: () {
                                          controller.changeTab('Domestic');
                                        },
                                        child: Text(
                                          'Domestic',
                                          style: textThinStyle1.copyWith(
                                            color:
                                                controller.selectedTab.value ==
                                                        'Domestic'
                                                    ? kWhite
                                                    : kGreyDark,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(24),
                                        bottomRight: Radius.circular(24)),
                                    child: ColoredBox(
                                      color: controller.selectedTab.value ==
                                              'International'
                                          ? kBluePrimary
                                          : kGreylowLight,
                                      child: TextButton(
                                        onPressed: () {
                                          controller.changeTab('International');
                                        },
                                        child: Text(
                                          'International',
                                          style: textThinStyle1.copyWith(
                                            color:
                                                controller.selectedTab.value ==
                                                        'International'
                                                    ? kWhite
                                                    : kGreyDark,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  kHeight15,
                  GetBuilder<ExpolreController>(builder: (controller) {
                    return SizedBox(
                      height: 100.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => kHeight10,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 8,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.changeIndex(index);
                            },
                            child: CityCard(
                              data: exploreData[index],
                              index: index,
                            ),
                          );
                        },
                      ),
                    );
                  }),
                  kHeight15,
                  // PreviewPageviewImageBuilder(
                  //   imagesList: exploreData,
                  // ),
                ],
              ),
              kHeight30,
              const Text('Spacial Offers'),
              kHeight5,
              ListView.separated(
                separatorBuilder: (context, index) => kHeight10,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) => const FlightTicketCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final Map<String, String> data;
  final int index;

  CityCard({
    super.key,
    required this.data,
    required this.index,
  });

  final controller = Get.find<ExpolreController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      decoration: BoxDecoration(
        border: controller.selectedListviewIndex.value == index
            ? Border.all(width: 3, color: kBlack.withOpacity(.5))
            : const Border(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(
            controller.selectedListviewIndex.value == index ? 3 : 10.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: kRadius10,
              child: Image.asset(
                data['image']!,
                fit: BoxFit.fitHeight,
                width: 90.w,
                height: 200.h,
              ),
            ),
            Center(
              child: Text(
                data['city']!,
                style: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlightCard extends StatelessWidget {
  const FlightCard({
    super.key,
    required this.image,
  });
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
