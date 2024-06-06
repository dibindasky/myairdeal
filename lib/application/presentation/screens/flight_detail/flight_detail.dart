import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/traveler_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ScreenFlightDetail extends StatelessWidget {
  const ScreenFlightDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(id: 1, heading: 'Flight Details'),
          kHeight15,
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(14),
            //height: 320.h,
            decoration: BoxDecoration(
              boxShadow: boxShadow2,
              color: kWhite,
              borderRadius: kRadius10,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      flightDetailIcon,
                      height: 20.h,
                    ),
                    Text('Air India', style: textHeadStyle1),
                  ],
                ),
                kHeight10,
                SizedBox(
                  height: 8.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    itemCount: 500,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Text(
                      '_',
                      style: textThinStyle1.copyWith(
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bangalore',
                                style: textThinStyle1.copyWith(fontSize: 10.sp),
                              ),
                              Text('TML', style: textHeadStyle1),
                              kHeight5,
                              Text(
                                'Temale',
                                style: textThinStyle1.copyWith(
                                    color: kGrey, fontSize: 10.sp),
                              ),
                              kHeight5,
                              Text(
                                'International \nAirport',
                                style: textThinStyle1.copyWith(
                                  fontSize: 9.sp,
                                  color: kGrey,
                                ),
                              ),
                              kHeight5,
                              Text(
                                'Depart',
                                style: textThinStyle1.copyWith(
                                    color: kBlack, fontSize: 9.sp),
                              ),
                              kHeight5,
                              Text(
                                'Tue, May 06',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                              kHeight5,
                              Text('Class',
                                  style: textThinStyle1.copyWith(
                                      color: kBlack, fontSize: 9.sp)),
                              kHeight5,
                              Text(
                                'Economy',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '01h 45m',
                                style: textThinStyle1.copyWith(fontSize: 9.sp),
                              ),
                              kWidth5,
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 3,
                                    backgroundColor: kGrey,
                                  ),
                                  ...List.generate(
                                    10,
                                    (index) => Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w800,
                                          color: kBlack),
                                    ),
                                  ),
                                  const Icon(Icons.flight_rounded,
                                      size: 16, color: kBlue),
                                  ...List.generate(
                                    10,
                                    (index) => Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w800,
                                          color: kBlack),
                                    ),
                                  ),
                                  const CircleAvatar(
                                    radius: 3,
                                    backgroundColor: kGrey,
                                  ),
                                ],
                              ),
                              Text(
                                '0 Stop',
                                style: textThinStyle1.copyWith(fontSize: 9.sp),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Hyderabad',
                                style: textThinStyle1.copyWith(fontSize: 10.sp),
                              ),
                              Text(
                                'KMS',
                                style: textHeadStyle1,
                              ),
                              kHeight5,
                              Text(
                                'Kumasi',
                                style: textThinStyle1.copyWith(
                                  color: kGrey,
                                  fontSize: 10.sp,
                                ),
                              ),
                              kHeight5,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'International',
                                    style: textThinStyle1.copyWith(
                                      fontSize: 9.sp,
                                      color: kGrey,
                                    ),
                                  ),
                                  Text(
                                    'Airport',
                                    style: textThinStyle1.copyWith(
                                      fontSize: 9.sp,
                                      color: kGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Time',
                                  style: textThinStyle1.copyWith(
                                      color: kBlack, fontSize: 9.sp)),
                              kHeight5,
                              Text(
                                '07:00 AM',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                              kHeight5,
                              Text(
                                'Hand Baggage',
                                style: textThinStyle1.copyWith(
                                    color: kBlack, fontSize: 9.sp),
                              ),
                              kHeight5,
                              Text(
                                '23Kg',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemCount: 500,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Text(
                          '_',
                          style: textThinStyle1.copyWith(fontSize: 7.sp),
                        ),
                      ),
                    ),
                    kHeight10,
                    Text(
                      'Fare Summary',
                      style: textStyle1.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Passenger(s)',
                              style: textThinStyle1.copyWith(
                                  color: kBlack, fontSize: 9.sp),
                            ),
                            Text(
                              'Adult (x1)',
                              style: textThinStyle1.copyWith(
                                color: kBlack,
                                fontSize: 12.sp,
                              ),
                            ),
                            kHeight5,
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Ticket Price',
                              style: textThinStyle1.copyWith(
                                  color: kBlack, fontSize: 9.sp),
                            ),
                            Text(
                              '₹ 3500',
                              style: textThinStyle1.copyWith(
                                color: kBlack,
                                fontSize: 12.sp,
                              ),
                            ),
                            kHeight5,
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemCount: 500,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Text(
                          '_',
                          style: textThinStyle1.copyWith(fontSize: 7.sp),
                        ),
                      ),
                    ),
                    kHeight15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: textThinStyle1.copyWith(
                              fontSize: 14.sp, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '₹ 3500',
                          style: textThinStyle1.copyWith(
                              fontSize: 14.sp, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemCount: 500,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Text(
                          '_',
                          style: textThinStyle1.copyWith(fontSize: 7.sp),
                        ),
                      ),
                    ),
                    kHeight20,
                    RichText(
                      text: TextSpan(
                        text: '* Refundable (',
                        style:
                            textStyle1.copyWith(fontSize: 12.sp, color: kBlack),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Penalty rules Applies',
                            style: textStyle1.copyWith(
                                color: kBlue, fontSize: 12.sp),
                          ),
                          TextSpan(
                            text: ').',
                            style: textStyle1.copyWith(
                                color: kBlack, fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    kHeight20,
                    EventButton(
                      text: 'Confirm',
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: kWhite,
                          showDragHandle: true,
                          enableDrag: true,
                          context: context,
                          builder: (context) => const ConfrimBottomSheet(),
                        );
                      },
                    ),
                    kHeight10,
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ConfrimBottomSheet extends StatelessWidget {
  const ConfrimBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: kWhite, borderRadius: kRadius10),
      width: double.infinity,
      height: 380.h,
      child: ListView(
        children: [
          Text('Travel Insurance', style: textHeadStyle1),
          kHeight5,
          Text(
            'We Would  like to recommend that you secureyour travel',
            style: textThinStyle1.copyWith(color: kGreyDark),
          ),
          kHeight5,
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
            style: textThinStyle1.copyWith(color: kGrey, fontSize: 12.sp),
          ),
          kHeight5,
          Text('Key benifits', style: textThinStyle1),
          kHeight10,
          SizedBox(
            height: 120.h,
            child: ListView.separated(
              separatorBuilder: (context, index) => kWidth10,
              itemCount: 4,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: kBlueLightShade,
                      borderRadius: kRadius10,
                      border: Border.all(color: kBlueDark)),
                  width: 110.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('asset/icon/done_icon.png', height: 40.h),
                      kHeight10,
                      Text(
                        'Common carrier delayclaim up to 1000',
                        style: textThinStyle1.copyWith(fontSize: 9.sp),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          kHeight20,
          EventButton(
            isBorder: true,
            borderColor: kBlueLight,
            textColr: kBlueLight,
            color: kWhite,
            text: 'Continue without Securing your Travel',
            onTap: () {
              Navigator.pop(context);
              Get.toNamed(Routes.travelerDetails, id: 1);
            },
          ),
          kHeight10,
          EventButton(
            text: 'Secure your Travel & Add travel insurance',
            onTap: () {
              Navigator.pop(context);
              Get.toNamed(Routes.travelerDetails, id: 1);
            },
          ),
          kHeight20,
        ],
      ),
    );
  }
}

class TravelerDetails extends StatelessWidget {
  TravelerDetails({super.key});

  final controller = Get.find<TravelerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(id: 1, heading: 'Traveler Details'),
          kHeight15,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: kBlueLightShade,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Traveler Name',
                      style: textStyle1.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Save travellers',
                      style: textThinStyle1.copyWith(color: kBlue),
                    )
                  ],
                ),
                kHeight10,
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue),
                    borderRadius: kRadius10,
                    color: kWhite,
                  ),
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => CustomRadioButton(
                          selected: index == controller.genderType.value,
                          onChanged: () {
                            controller.changeGenderType(index);
                          },
                          text: controller.genderList[index],
                        ),
                      ),
                    ),
                  ),
                ),
                kHeight15,
                Text('First Name', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your First Name',
                  fillColor: kWhite,
                ),
                Text('Last Name', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your last Name',
                  fillColor: kWhite,
                ),
                kHeight15
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: kBlueLightShade,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight15,
                Text(
                  'Contact Details',
                  style: textStyle1.copyWith(
                      fontSize: 15.sp, fontWeight: FontWeight.w700),
                ),
                kHeight10,
                Text('Mail ID', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: '@gmail.com',
                  fillColor: kWhite,
                ),
                Text('Last Name', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your last Name',
                  fillColor: kWhite,
                ),
                kHeight15
              ],
            ),
          ),
          kHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: EventButton(
              hieght: 40.h,
              text: 'Proceed',
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: knill,
                  context: context,
                  builder: (context) => const ReviewNameBottomSheet(),
                );
              },
            ),
          ),
          kHeight30,
        ],
      ),
    );
  }
}

class ReviewNameBottomSheet extends StatelessWidget {
  const ReviewNameBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      width: double.infinity,
      height: 265.h,
      child: Column(
        children: [
          Container(
            height: 5.h,
            width: 100.w,
            decoration: const BoxDecoration(color: kGrey),
          ),
          kHeight15,
          Expanded(
            child: ListView(
              children: [
                Text('Review your name', style: textHeadStyle1),
                kHeight10,
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
                  style: textThinStyle1.copyWith(color: kGrey, fontSize: 12.sp),
                ),
                kHeight15,
                ClipRRect(
                  borderRadius: kRadius10,
                  child: const ColoredBox(
                    color: kBlueLightShade,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Passengers'),
                                Text('Adult 1'),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 10,
                            color: kBlueDark,
                            thickness: 3,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('First and Middle Name'),
                                Text('Adult 1'),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: kBlack,
                            thickness: 3,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mobile num'),
                                Text('Adult 1'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: EventButton(
                        hieght: 38.h,
                        borderColor: kBlue,
                        textColr: kBlue,
                        color: kWhite,
                        isBorder: true,
                        text: 'Edit Name',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    kWidth20,
                    Expanded(
                      child: EventButton(
                        hieght: 38.h,
                        text: 'Confirm',
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                kHeight15,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
