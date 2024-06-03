import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

const errorMessage = 'something went wrong, please try again';

const poppins = 'Poppins';
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

TextStyle textHeadStyle1 =
    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp);

TextStyle textStyle1 = TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp);

TextStyle textThinStyle1 =
    TextStyle(fontWeight: FontWeight.w300, fontSize: 12.sp);

List<BoxShadow> boxShadow1 = const [
  BoxShadow(spreadRadius: 5, blurRadius: 10, offset: Offset(0, 3), color: kGrey)
];
List<BoxShadow> boxShadow2 = const [
  BoxShadow(spreadRadius: 2, blurRadius: 4, offset: Offset(0, 1), color: kGrey)
];

// Asset
String myAirDealLogo = 'asset/image/my air deal logo .png';
String splashImage = 'asset/image/myair_deal_logo.png';
String imageGlobalMap = 'asset/image/Global Map.png';
String imageFlight = 'asset/image/Ellipse 4.png';
String imageSecureLogin = 'asset/image/secureLogin.png';
String faceBookIcon = 'asset/image/Facebook.png';
String googleIcon = 'asset/image/Google.png';
String tickIcon = 'asset/icon/tick_image.png';

