import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/header_section_sort_screen.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card.dart';

class ScreenFlightTicketSort extends StatelessWidget {
  const ScreenFlightTicketSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SortScreenHeaderSection(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  kHeight10,
                  FittedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SortingChipSortPage(
                              text: 'Flight: BNG TO HYD',
                              selected: true,
                              onTap: () {}),
                          SortingChipSortPage(
                              text: 'Departure: May 06, 2024',
                              selected: true,
                              onTap: () {}),
                          SortingChipSortPage(
                              text: 'Class: Premium Economy',
                              selected: true,
                              onTap: () {}),
                        ]),
                  ),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SortingChipSortPage(
                            text: 'Sort By: Best',
                            selected: false,
                            onTap: () {
                              showModalBottomSheet(
                                backgroundColor: knill,
                                context: context,
                                builder: (context) => SortFlightBottomSheet(),
                              );
                            }),
                        SortingChipSortPage(
                            text: 'Stops',
                            selected: false,
                            onTap: () {
                              showModalBottomSheet(
                                backgroundColor: knill,
                                context: context,
                                builder: (context) => StopsSortBottomSheet(),
                              );
                            }),
                        SortingChipSortPage(
                            text: 'Duration', selected: false, onTap: () {}),
                        SortingChipSortPage(
                            text: 'Flight times',
                            selected: false,
                            onTap: () {}),
                        SortingChipSortPage(
                            text: 'Airlines', selected: false, onTap: () {}),
                      ],
                    ),
                  ),
                  kHeight5,
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    separatorBuilder: (context, index) => kHeight5,
                    itemBuilder: (context, index) => CustomExpansionTile(
                      child: const FlightTicketCard(),
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: kBlueDark,
                        )
                      ],
                    ),
                  ),
                  kHeight10,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SortFlightBottomSheet extends StatelessWidget {
  const SortFlightBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight40,
            Text('Sort', style: textHeadStyle1),
            kHeight10,
            ...List.generate(
              controller.sortTypes.length,
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.sortTypes[index], style: textStyle1),
                  Radio<String>(
                      activeColor: kBluePrimary,
                      value: controller.sortTypes[index],
                      groupValue: controller.sortType.value,
                      onChanged: (value) {
                        controller.changeSortTypes(value!);
                      })
                ],
              ),
            ),
            kHeight5,
          ],
        );
      }),
    );
  }
}

class StopsSortBottomSheet extends StatelessWidget {
  const StopsSortBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight40,
            Text('Stop', style: textHeadStyle1),
            kHeight10,
            ...List.generate(
              controller.stopTypes.length,
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.stopTypes[index], style: textStyle1),
                  Radio<String>(
                      activeColor: kBluePrimary,
                      value: controller.stopTypes[index],
                      groupValue: controller.stopType.value,
                      onChanged: (value) {
                        controller.changeStopTypes(value!);
                      })
                ],
              ),
            ),
            kHeight5,
          ],
        );
      }),
    );
  }
}

class SortingChipSortPage extends StatelessWidget {
  const SortingChipSortPage({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final String text;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        decoration: BoxDecoration(
            boxShadow: boxShadow3,
            border: Border.all(color: kBluePrimary),
            borderRadius: kRadius10,
            color: selected ? kBluePrimary : kWhite),
        child: Expanded(
          child: Text(
            text,
            style: textThinStyle1.copyWith(
                color: selected ? kWhite : kBluePrimary, fontSize: 8.sp),
          ),
        ),
      ),
    );
  }
}
