import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class SavedDetailsCard extends StatelessWidget {
  final TravellerInfo? passengers;

  const SavedDetailsCard({Key? key, this.passengers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: themeController.primaryColor,
        ),
        borderRadius: kRadius10,
        color: themeController.secondaryLightColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight10,
          passengers?.pt != null && passengers?.pt != ''
              ? ItemField(
                  icon: Icons.category_rounded,
                  categery: 'Categery',
                  subtittle: passengers?.pt ?? '',
                )
              : kEmpty,
          passengers?.pt != null ? kHeight5 : kEmpty,
          (passengers?.ti != null && passengers?.ti != '') ||
                  (passengers?.fN != null && passengers?.fN != '') ||
                  (passengers?.lN != null && passengers?.lN != '')
              ? ItemField(
                  icon: Icons.person,
                  categery: 'Name',
                  subtittle:
                      '${passengers?.ti} ${passengers?.fN} ${passengers?.lN}',
                )
              : kEmpty,
          passengers?.ti != null ||
                  passengers?.fN != null ||
                  passengers?.lN != null
              ? kHeight5
              : kEmpty,
          passengers?.dob != null && passengers?.dob != ''
              ? ItemField(
                  icon: Icons.date_range,
                  categery: 'DOB',
                  subtittle: passengers?.dob ?? '',
                )
              : kEmpty,
          passengers?.dob != null ? kHeight5 : kEmpty,
          passengers?.pNum != null && passengers?.pNum != ''
              ? ItemField(
                  icon: Iconsax.global_edit,
                  categery: 'Passport Number',
                  subtittle: passengers?.pNum ?? '',
                )
              : kEmpty,
          passengers?.pNum != null && passengers?.pNum != ''
              ? kHeight5
              : kEmpty,
          passengers?.pid != null && passengers?.pid != ''
              ? ItemField(
                  icon: Icons.date_range_rounded,
                  categery: 'Passport Issue Date',
                  subtittle: passengers?.pid ?? '',
                )
              : kEmpty,
          passengers?.pid != null && passengers?.pid != '' ? kHeight5 : kEmpty,
          passengers?.eD != null && passengers?.eD != ''
              ? ItemField(
                  icon: Icons.data_exploration_outlined,
                  categery: 'Passport Expiry Date',
                  subtittle: passengers?.eD ?? '',
                )
              : kEmpty,
          passengers?.eD != null && passengers?.eD != '' ? kHeight5 : kEmpty,
          passengers?.pN != null && passengers?.pN != ''
              ? ItemField(
                  icon: Icons.location_city,
                  categery: 'Nationality',
                  subtittle: passengers?.pN ?? '',
                )
              : kEmpty,
          passengers?.pN != null && passengers?.pN != '' ? kHeight5 : kEmpty,
        ],
      ),
    );
  }
}

class ItemField extends StatelessWidget {
  const ItemField({
    super.key,
    required this.icon,
    required this.categery,
    required this.subtittle,
  });
  final IconData icon;
  final String categery;
  final String subtittle;

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 17.w, color: themeController.primaryColor),
            kWidth10,
            Text(categery, style: textThinStyle1),
          ],
        ),
        Text(subtittle, style: textThinStyle1),
      ],
    );
  }
}
