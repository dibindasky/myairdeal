import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenSuccessPage extends StatelessWidget {
  const ScreenSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 17,
            color: kWhite,
          ),
        ),
        title: Text(
          'Boarding pass',
          style: textStyle1.copyWith(
              color: kWhite, fontSize: 14.sp, fontWeight: FontWeight.w400),
        ),
        backgroundColor: kBlueDark,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 190.h,
                      decoration: const BoxDecoration(
                        color: kBlueDark,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/icon/success_icon_green.png',
                            height: 110.h,
                          ),
                          Text('Booking done successfully!',
                              style: textThinStyle1.copyWith(color: kWhite))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.h,
            right: 0.h,
            bottom: 20.h,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: kRadius10,
                  child: Image.asset('asset/dev/success_payment_image.png'),
                ),
                kHeight20,
                EventButton(
                  style: textStyle1.copyWith(fontSize: 13.sp, color: kWhite),
                  width: 220.w,
                  text: 'Download Ticket',
                  onTap: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
