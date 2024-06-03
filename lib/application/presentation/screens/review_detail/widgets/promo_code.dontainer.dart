import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class PromoCodeContainer extends StatefulWidget {
  const PromoCodeContainer({super.key});

  @override
  State<PromoCodeContainer> createState() => _PromoCodeContainerState();
}

class _PromoCodeContainerState extends State<PromoCodeContainer> {
  String selectedPromo = '';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      shadowColor: kBluePrimary,
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
                const Expanded(
                  child: CupertinoTextField(
                    placeholder: 'Enter Promo code',
                  ),
                ),
                kWidth10,
                EventButton(
                  hieght: 27.h,
                  width: 70.w,
                  text: 'Apply',
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
                String promoCode = 'YRICICICC$index';
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedPromo = promoCode;
                    });
                  },
                  child: ListTile(
                    title: Text(
                      'YRICICICC Save ₹ 224',
                      style: textThinStyle1,
                    ),
                    subtitle: Text(
                      'Upto 13% OFF on using ICICI Bank Credit card',
                      style: textThinStyle1.copyWith(
                          color: kGreyDark, fontSize: 9.sp),
                    ),
                    leading: Radio<String>(
                      value: promoCode,
                      groupValue: selectedPromo,
                      onChanged: (value) {},
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
