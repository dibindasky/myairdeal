import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/tabs/enquiry.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenCommingSoon extends StatelessWidget {
  const ScreenCommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TalkToUsController>();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Get.find<AuthController>().getUserInfo(true);
      },
    );
    final arguments = Get.arguments as Map<String, dynamic>;
    final image = arguments['image'] as String;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() =>
                DetailAppBar(heading: controller.selectedEnquiryType.value)),
            Center(child: Image.asset(image)),
            kHeight15,
            Text('Comming soon', style: textHeadStyle1),
            GetBuilder<AuthController>(builder: (contro) {
              if (contro.isLoading.value) {
                return SizedBox(
                  height: 300.h,
                  child: const Center(
                      child: CircularProgressIndicator(color: kBluePrimary)),
                );
              }
              return Padding(
                  padding: EdgeInsets.all(10.w), child: const EnquiryBox());
            }),
            kHeight20,
          ],
        ),
      ),
    );
  }
}
