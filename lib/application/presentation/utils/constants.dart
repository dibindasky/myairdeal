import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

const errorMessage = 'something went wrong, please try again';

const poppins = 'Poppins';
const kEmpty = SizedBox();

final kHeight5 = SizedBox(height: 5.h);
final kHeight10 = SizedBox(height: 10.h);
final kHeight15 = SizedBox(height: 15.h);
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
List<BoxShadow> boxShadow3 = const [
  BoxShadow(
      spreadRadius: 1, blurRadius: 3, offset: Offset(0, 1), color: kGreyLight)
];

// Asset
String myAirDealLogo = 'asset/image/myair_deal_logo.png';
String splashImage = 'asset/image/myair_deal_logo.png';
String onBoardImage = 'asset/image/onbaord_image_one.png';
String imageGlobalMap = 'asset/image/Global Map.png';
String imageFlight = 'asset/image/Ellipse 4.png';
String imageSecureLogin = 'asset/image/secureLogin.png';
String imageFlightTrip = 'asset/image/airplane1.png';
String faceBookIcon = 'asset/image/Facebook.png';
String googleIcon = 'asset/image/Google.png';
String tickIcon = 'asset/icon/tick_image.png';
String flightDetailIcon = 'asset/image/flight_detail_image.png';
String profileIcon = 'asset/image/profile.png';
String smsIcon = 'asset/image/sms.png';
String copyIcon = 'asset/image/link-2.png';
String mumbai = 'asset/image/mumbai.png';

// NetWork image
String dummyPersonimage =
    'https://www.google.com/imgres?q=person%20image&imgurl=https%3A%2F%2Fengineering.unl.edu%2Fimages%2Fstaff%2FKayla-Person.jpg&imgrefurl=https%3A%2F%2Fengineering.unl.edu%2Fkayla-person%2F&docid=ap6GPr-70tOAyM&tbnid=r4kykPUijMfl_M&vet=12ahUKEwiil4-b2LeGAxX43TgGHQWLAfUQM3oECDQQAA..i&w=600&h=800&hcb=2&ved=2ahUKEwiil4-b2LeGAxX43TgGHQWLAfUQM3oECDQQAA';
List<Map<String, String>> exploreData = [
  {'image': 'asset/image/mumbai.png', 'city': 'Mumbai'},
  {'image': 'asset/image/surat.jpeg', 'city': 'Surat'},
  {'image': 'asset/image/chennai.jpeg', 'city': 'Chennai'},
  {'image': 'asset/image/pune.jpeg', 'city': 'Pune'},
  {'image': 'asset/image/mumbai.png', 'city': 'Mumbai'},
  {'image': 'asset/image/surat.jpeg', 'city': 'Surat'},
  {'image': 'asset/image/chennai.jpeg', 'city': 'Chennai'},
  {'image': 'asset/image/pune.jpeg', 'city': 'Pune'},
];
