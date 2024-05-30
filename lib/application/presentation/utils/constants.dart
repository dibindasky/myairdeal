import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:myairdeal/application/presentation/utils/colors.dart';

const errorMessage = 'something went wrong, please try again';

const gilroyBold = 'Gilroy-Bold';
const gilroyMedium = 'Gilroy-Medium';
const gilroyRegular = 'Gilroy-Regular';
const gilroySemiBold = 'Gilroy-SemiBold';

double sHeight = 900;
double sWidth = 400;

const kEmpty = SizedBox();

final kHeight5 = SizedBox(height: 5.h);
final kHeight10 = SizedBox(height: 10.h);
final kHeight20 = SizedBox(height: 20.h);
final kHeight30 = SizedBox(height: 30.h);
final kHeight40 = SizedBox(height: 40.h);
final kHeight50 = SizedBox(height: 50.h);

final kWidth5 = SizedBox(width: 5.w);
final kWidth10 = SizedBox(width: 10.w);
final kWidth20 = SizedBox(width: 20.w);
final kWidth30 = SizedBox(width: 30.w);
final kWidth50 = SizedBox(width: 50.w);

final kRadius5 = BorderRadius.circular(5);
final kRadius10 = BorderRadius.circular(10);
final kRadius15 = BorderRadius.circular(15);
final kRadius50 = BorderRadius.circular(50);

final textHeadBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadBoldBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadBoldBig2 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.07 : sWidth * 0.055,
);

final textHeadMedium1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadMediumBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadRegular1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadRegular2 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.050 : sWidth * 0.040,
);

final textHeadRegularBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadSemiBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroySemiBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height > 900 ? 900 : size.height;
  sWidth = size.width > 450 ? 450 : size.width;
}
