import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SearchAirportTile extends StatelessWidget {
  const SearchAirportTile({
    this.history = false,
    super.key,
  });

  final bool history;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      child: Row(
        children: [
          history
              ? const Icon(Icons.history, color: kBluePrimary)
              : Container(
                  padding: EdgeInsets.all(2.w),
                  decoration:
                      BoxDecoration(color: kBlueLight, borderRadius: kRadius5),
                  child: const Text('DEL')),
          kWidth10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bangalore', style: textStyle1),
                Text(
                  'indira Gandhi international',
                  style: textThinStyle1.copyWith(color: kGreyDark),
                )
              ],
            ),
          ),
          Container(
            height: 10.h,
            width: 20.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(splashImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          kWidth5,
          const Text('India')
        ],
      ),
    );
  }
}
