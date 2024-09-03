import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/network_image_loader.dart';

class NormalCenterItems extends StatelessWidget {
  const NormalCenterItems(
      {super.key,
      this.haveImage = true,
      this.airline,
      this.flightId,
      this.date,
      this.number,
      this.travelMinutes = '',
      this.airlineCode,
      this.stops = 1,
      this.airlineCodes = const []});

  final bool haveImage;
  final String? airline;
  final int stops;
  final String travelMinutes;
  final String? date;
  final String? flightId;
  final String? number;
  final String? airlineCode;
  final List<String> airlineCodes;

  @override
  Widget build(BuildContext context) {
    final images = {...airlineCodes}.toList();
    return Column(
      children: [
        kHeight5,
        airlineCodes.isNotEmpty
            ? Row(
              mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    images.length,
                    (index) => NetworkImageWithLoading(
                        imageUrl: getAirlineLogo(images[index]), height: 17)),
              )
            : 
            airlineCode != null
                ? NetworkImageWithLoading(
                    imageUrl: getAirlineLogo(airlineCode!), height: 20)
                : haveImage
                    ? Image.asset(flightDetailIcon, height: 20.h)
                    : kEmpty,
        kHeight5,
        Text(
          '${airline ?? ''}${flightId ?? ''}',
          style: textStyle1.copyWith(fontSize: 12.sp),
        ),
        kHeight5,
        travelMinutes == ''
            ? kEmpty
            : Text(
                travelMinutes,
                style: textThinStyle1.copyWith(fontSize: 9.sp),
              ),
        FittedBox(
          child: Row(
            children: [
              kWidth5,
              const CircleAvatar(
                radius: 3,
                backgroundColor: kGrey,
              ),
              ...List.generate(
                4,
                (index) => Text(
                  '-',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w800,
                      color: kBlack),
                ),
              ),
              stops != 0
                  ? const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(Icons.flight_rounded, size: 20, color: kBlue),
                    )
                  : kEmpty,
              ...List.generate(
                4,
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
              kWidth5
            ],
          ),
        ),
        Text(
          stops == 0 ? 'Non Stop' : '$stops Stops',
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
        number != null
            ? Text(number!, style: textThinStyle1.copyWith(fontSize: 9.sp))
            : kEmpty,
        date != null
            ? Text(
                date!,
                style: textThinStyle1.copyWith(fontSize: 9.sp),
              )
            : kEmpty,
      ],
    );
  }
}
