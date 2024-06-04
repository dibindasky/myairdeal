import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TravelInsurenceContainer extends StatefulWidget {
  const TravelInsurenceContainer({super.key});

  @override
  State<TravelInsurenceContainer> createState() =>
      _TravelInsurenceContainerState();
}

class _TravelInsurenceContainerState extends State<TravelInsurenceContainer> {
  bool addTravelInsurance = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: kBluePrimary,
      color: kBlueThinLIght,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Travel insurance',
              style: textHeadStyle1.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yes, Add Travel Insurance to my Trip',
                  style: textStyle1.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
                Switch(
                  value: addTravelInsurance,
                  onChanged: (value) {
                    setState(() {
                      addTravelInsurance = value;
                    });
                  },
                ),
              ],
            ),
            Text(
              'Rs.176 per passenger inclusive of 18% percent',
              style: textHeadStyle1.copyWith(fontSize: 14.sp),
            ),
            kHeight5,
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: textThinStyle1.copyWith(color: kGreyDark, fontSize: 9.sp),
            ),
            Text(
              'Terms & Conditions',
              style:
                  textThinStyle1.copyWith(fontSize: 10.sp, color: kBluePrimary),
            ),
            const Divider(),
            ExpansionTile(
              // enableFeedback: false,
              iconColor: kBlue,
              // enabled: true,
              // dense: true,
              childrenPadding: const EdgeInsets.all(0),
              tilePadding: const EdgeInsets.all(0),
              title: const Text('Key benifits'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: textStyle1.copyWith(fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
