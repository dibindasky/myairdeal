import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/add_details_tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_details.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_field_container.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/seat_selection.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';

class PassengerDetailsTab extends StatelessWidget {
  const PassengerDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.w),
      child: Column(
        children: [
          const DetailsTab(),
          kHeight10,
          Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<TravellerController>(builder: (cotext) {
                  return Stack(
                    children: [
                      GetBuilder<TravellerController>(builder: (controller) {
                        if (controller.selectedAddDetailsStep.value == 0) {
                          return const PassengerDetailsContainer();
                        } else if (controller.selectedAddDetailsStep.value ==
                            1) {
                          return const SelectSeatContainer();
                        } else if (controller.selectedAddDetailsStep.value ==
                            2) {
                          return BaggageAndMealsSelection();
                        } else if (controller.selectedAddDetailsStep.value ==
                            3) {
                          return kEmpty;
                        } else {
                          return kEmpty;
                        }
                      }),
                      cotext.selectedDetailStepArrow.value
                          ? const StackContainer()
                          : kEmpty,
                    ],
                  );
                }),
                kHeight20,
                const BottomButton(),
              ],
            );
          }),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class BaggageAndMealsSelection extends StatelessWidget {
  BaggageAndMealsSelection({super.key});

  String? _selectedBaggageOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Add baggage and Meal', style: textStyle1),
        kHeight10,
        Row(
          children: [
            Image.asset(flightDetailIcon, height: 20.h),
            kWidth10,
            Text('Bangalore  Hyderabad On june 25 , 2024',
                style: textThinStyle1.copyWith(color: kBlueDark)),
          ],
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(5),
          shrinkWrap: true,
          itemCount: 3,
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
                child: Row(
                  children: [
                    Text('Adult ${index + 1}'),
                    const Spacer(),
                    const Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ),
            ),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: kBlue),
                  borderRadius: kRadius10,
                  color: kBlueLightShade,
                ),
                child: Column(
                  children: [
                    kHeight10,
                    Row(
                      children: [
                        const Text('Baggage'),
                        kWidth20,
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10.w),
                            decoration: BoxDecoration(
                                boxShadow: boxShadow2,
                                color: kWhite,
                                borderRadius: kRadius15),
                            child: DropdownButton<String>(
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 17.w,
                                    color: kBluePrimary,
                                  ),
                                ),
                              ),
                              isDense: false,
                              isExpanded: true,
                              value: _selectedBaggageOption,
                              hint: const Text('Select an option'),
                              items: <String>[
                                'Option 1',
                                'Option 2',
                                'Option 3'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {},
                            ),
                          ),
                        )
                      ],
                    ),
                    kHeight15,
                    Row(
                      children: [
                        const Text('Meals'),
                        kWidth30,
                        kWidth10,
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10.w),
                            decoration: BoxDecoration(
                                boxShadow: boxShadow2,
                                color: kWhite,
                                borderRadius: kRadius15),
                            child: DropdownButton<String>(
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 17.w,
                                    color: kBluePrimary,
                                  ),
                                ),
                              ),
                              isDense: false,
                              isExpanded: true,
                              value: _selectedBaggageOption,
                              hint: const Text('Select an option'),
                              items: <String>[
                                'Option 1',
                                'Option 2',
                                'Option 3'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {},
                            ),
                          ),
                        )
                      ],
                    ),
                    kHeight10
                  ],
                ),
              )
              //DetailContainer(),
            ],
          ),
        ),
        kHeight15,
        Row(
          children: [
            Image.asset(flightDetailIcon, height: 20.h),
            kWidth10,
            Text('Bangalore  Hyderabad On june 25 , 2024',
                style: textThinStyle1.copyWith(color: kBlueDark)),
          ],
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(5),
          shrinkWrap: true,
          itemCount: 3,
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
                child: Row(
                  children: [
                    Text('Adult ${index + 1}'),
                    const Spacer(),
                    const Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
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

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TravellerController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add ons total',
              style: textThinStyle1.copyWith(fontSize: 10.sp),
            ),
            const Text(
              '₹ 120',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Subtotal',
              style: textThinStyle1.copyWith(fontSize: 10.sp),
            ),
            const Text(
              '₹ 3500',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        kWidth20,
        Expanded(
          child: EventIconButton(
            suffixIcon: Image.asset(tickIcon, height: 13.h),
            text:
                controller.selectedMainTab.value != 3 ? "Continue" : 'Payment',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cotext = Get.find<TravellerController>();
    return Positioned(
      child: Padding(
        padding: EdgeInsets.only(top: 30.w),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.w),
          decoration: BoxDecoration(
            border: Border.all(color: kBlue),
            borderRadius: kRadius10,
            color: kBlueLightShade,
          ),
          width: double.infinity,
          child: Column(
            children: [
              kHeight10,
              ListView.separated(
                padding: const EdgeInsets.all(0),
                separatorBuilder: (context, index) => kHeight5,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 40.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGreen),
                      borderRadius: kRadius10,
                      color: kWhite,
                    ),
                    child: Row(
                      children: [
                        Text(cotext.addDetailsSubList[index]),
                        kWidth10,
                        CircleAvatar(
                          radius: 7.w,
                          backgroundColor: kGreen,
                          child: Icon(
                            Icons.check,
                            size: 13.w,
                            color: kWhite,
                          ),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 15.w, color: kGreen)
                      ],
                    ),
                  );
                },
              ),
              kHeight10
            ],
          ),
        ),
      ),
    );
  }
}
