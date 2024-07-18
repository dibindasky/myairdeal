import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_field_container.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';

class BaggageAndMealsSelection extends StatelessWidget {
  const BaggageAndMealsSelection({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedBaggageOption;
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
          padding: EdgeInsets.all(5.w),
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
                                boxShadow: boxShadow4,
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
                              value: selectedBaggageOption,
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
                                boxShadow: boxShadow4,
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
                              value: selectedBaggageOption,
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
            children: [
              DetailContainer(index:index,travellerType: 'ADULT'),
            ],
          ),
        ),
        kHeight20,
        const BottomButton(),
        kHeight15
      ],
    );
  }
}
