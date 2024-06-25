import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/payment_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AddMethodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  AddMethodCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final paymentController = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40, color: kBluePrimary),
      title: Text(title),
      subtitle: Column(
        children: [
          Text(
            subtitle,
            style: textThinStyle1.copyWith(color: kGreyDark, fontSize: 12.sp),
            maxLines: 2,
          ),
          Row(
            children: [
              Image.asset(
                'asset/icon/payment_agreee_tick.png',
                height: 12.h,
              ),
              kWidth5,
              Text(
                'Get IOS Disount',
                style:
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 12.sp),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          'Add',
          style: textThinStyle1.copyWith(color: kBluePrimary),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
