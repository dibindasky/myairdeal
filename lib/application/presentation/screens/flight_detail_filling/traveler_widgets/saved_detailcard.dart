import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class SavedDetailsCard extends StatelessWidget {
  final TravellerInfo? passengers;

  const SavedDetailsCard({Key? key, this.passengers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: kIndigo,
        ),
        borderRadius: kRadius10,
        color: kBlueThinLIght,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight10,
          ItemField(
            icon: Icons.category_rounded,
            categery: 'Categery',
            subtittle: passengers?.pt ?? '',
          ),
          kHeight5,
          ItemField(
            icon: Icons.person,
            categery: 'Name',
            subtittle: '${passengers?.ti} ${passengers?.fN} ${passengers?.lN}',
          ),
          kHeight5,
          ItemField(
            icon: Icons.date_range,
            categery: 'DOB',
            subtittle: passengers?.dob ?? '',
          ),
          kHeight5,
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
          passengers?.pN != null && passengers?.pN != '' ? kHeight10 : kEmpty,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 17.w, color: kBlue),
            kWidth10,
            Text(categery, style: textThinStyle1),
          ],
        ),
        Text(subtittle, style: textThinStyle1),
      ],
    );
  }
}
