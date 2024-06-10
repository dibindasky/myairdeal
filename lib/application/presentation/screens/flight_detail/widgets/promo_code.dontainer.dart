import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';

class PromoCodeContainer extends StatefulWidget {
  const PromoCodeContainer({super.key});

  @override
  State<PromoCodeContainer> createState() => _PromoCodeContainerState();
}

class _PromoCodeContainerState extends State<PromoCodeContainer> {
  String selectedPromo = '';
  @override
  Widget build(BuildContext context) {
    final flightSortController = Get.find<FlightSortController>();
    return Container(
      decoration: BoxDecoration(
          color: kWhite, boxShadow: boxShadow1, borderRadius: kRadius15),
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Promo code',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            kHeight10,
            Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    decoration: BoxDecoration(
                        color: kBlueLightShade,
                        borderRadius: kRadius5,
                        border: const Border(
                          bottom: BorderSide(color: kBluePrimary),
                          top: BorderSide(color: kBluePrimary),
                          left: BorderSide(color: kBluePrimary),
                          right: BorderSide(color: kBluePrimary),
                        )),
                    placeholder: 'Enter Promo code',
                  ),
                ),
                kWidth10,
                EventButton(
                  hieght: 31.h,
                  width: 70.w,
                  text: 'Apply',
                  fontSize: 12.sp,
                  onTap: () {},
                )
              ],
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CustomRadioButton(
                  onChanged: () {
                    flightSortController.changePromoCode(index);
                  },
                  selected:
                      flightSortController.selectedPromoCode.value == index,
                  child:
                      GetBuilder<FlightSortController>(builder: (controller) {
                    return ListTile(
                      title: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: kYellowDark)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 3.h),
                            child: Text(
                              'YRICICICC',
                              style: textThinStyle1,
                            ),
                          ),
                          kWidth5,
                          Text(
                            'Save ₹ 224',
                            style: textThinStyle1,
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Upto 13% OFF on using ICICI Bank Credit card',
                        style: textThinStyle1.copyWith(
                            color: kGreyDark, fontSize: 9.sp),
                      ),
                      leading: flightSortController.selectedPromoCode.value ==
                              index
                          ? const Icon(Icons.radio_button_checked, color: kBlue)
                          : const Icon(Icons.radio_button_unchecked),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
