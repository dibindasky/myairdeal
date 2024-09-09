import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';

const errorMessage = 'something went wrong, please try again';

const poppins = 'Poppins';

const privacyPolicy='https://www.myairdeal.com/privacy-policy';
const termsAndConditons='https://www.myairdeal.com/terms-and-conditions';

const kEmpty = SizedBox();

final kHeight5 = SizedBox(height: 5.h);
final kHeight10 = SizedBox(height: 10.h);
final kHeight15 = SizedBox(height: 15.h);
final kHeight20 = SizedBox(height: 20.h);
final kHeight30 = SizedBox(height: 30.h);
final kHeight40 = SizedBox(height: 40.h);
final kHeight50 = SizedBox(height: 50.h);
final kHeight7 = SizedBox(height: 7.h);

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
List<BoxShadow> boxShadow4 = [
  const BoxShadow(
      spreadRadius: 2, blurRadius: 5, offset: Offset(0, 0), color: kGreyLight)
];
List<BoxShadow> boxShadow2Blue = const [
  BoxShadow(
      spreadRadius: 2, blurRadius: 4, offset: Offset(0, 1), color: kBlueDark)
];

// Asset
String myAirDealLogo = 'asset/logo/myairdeal_gold_logo.jpg';
// String myAirDealLogo = 'asset/image/myair_deal_logo.png';
String splashImage = 'asset/image/myair_deal_logo.png';
String onBoardImage = 'asset/image/onbaord_image_one.png';
String imageGlobalMapGray = 'asset/image/Global Map.png';
String imageGlobalMapGold = 'asset/image/Global Map1.png';
String imageFlight = 'asset/image/Ellipse 4.png';
String imageSecureLogin = 'asset/image/secureLogin.png';
String imageFlightTrip = 'asset/image/airplane1.png';
String imageAirAmbulance = 'asset/image/air_Ambulance.png';
String imageChatteredFlight = 'asset/image/chattered_flight.png';
String imageHelicopter = 'asset/image/helicopter.png';
String imageChatPerson = 'asset/image/chat_person.png';
String faceBookIcon = 'asset/image/Facebook.png';
String googleIcon = 'asset/image/Google.png';
String tickIcon = 'asset/icon/tick_image.png';
String flightDetailIcon = 'asset/image/flight_detail_image.png';
String profileIcon = 'asset/image/profile.png';
String smsIcon = 'asset/image/sms.png';
String copyIcon = 'asset/image/link-2.png';
String mumbai = 'asset/image/mumbai.png';
String bookingEmptyImage = 'asset/image/booking_empty.png';

List<String> homeTabImages = [
  imageFlight,
  imageAirAmbulance,
  imageChatteredFlight,
  imageHelicopter
];

Color findInvoiceColor(FlightTicketInvoiceEnum flightTicketInvoiceEnum) {
  switch (flightTicketInvoiceEnum) {
    case FlightTicketInvoiceEnum.cancel:
      return kYellow;
    case FlightTicketInvoiceEnum.upcoming:
      return kBlack;
    case FlightTicketInvoiceEnum.success:
      return kRed;
    case FlightTicketInvoiceEnum.comblete:
      return kBlueLight;
    default:
      return kBlueLightShade;
  }
}

//  On Boarding screeen BLUE
String myOnbaordOne = 'asset/image/my_air_deal_one.png';
String myOnboardTwo = 'asset/image/my_air_deal_two.png';
String myOnbaordThree = 'asset/image/my_air_deal_three.png';

// On Boarding screeen GOLDEN
String myOnbaordGoldenOne = 'asset/onbaord/onboardGoldenForst.png';
String myOnboardGoldenTwo = 'asset/onbaord/onboardGoldenSecond.png';
String myOnbaordGoldenThree = 'asset/onbaord/onboardGoldenThird.png';

const imageRazorpay = 'asset/dev/razorpay.png';

String getAirlineLogo(String code) {
  return ApiEndPoints.baseUrl +
      ApiEndPoints.airllineLogo.replaceFirst('{airlinecode}', code);
}

String nodata = 'asset/image/nodataImage.png';

String removeBase64Prefix(String base64String) {
  const List<String> prefixes = [
    'data:image/jpeg;base64,',
    'data:image/png;base64,',
    'data:image/gif;base64,',
    'data:image/jpg;base64,',
  ];
  for (String prefix in prefixes) {
    if (base64String.startsWith(prefix)) {
      return base64String.replaceFirst(prefix, '');
    }
  }
  return base64String;
}

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

final Map<String, int> countryMaxLengths = {
  'AF': 9, // Afghanistan
  'AL': 9, // Albania
  'DZ': 9, // Algeria
  'AS': 7, // American Samoa
  'AD': 6, // Andorra
  'AO': 9, // Angola
  'AI': 7, // Anguilla
  'AG': 7, // Antigua and Barbuda
  'AR': 10, // Argentina
  'AM': 8, // Armenia
  'AW': 7, // Aruba
  'AU': 9, // Australia
  'AT': 11, // Austria
  'AZ': 9, // Azerbaijan
  'BS': 7, // Bahamas
  'BH': 8, // Bahrain
  'BD': 10, // Bangladesh
  'BB': 7, // Barbados
  'BY': 9, // Belarus
  'BE': 9, // Belgium
  'BZ': 7, // Belize
  'BJ': 9, // Benin
  'BM': 7, // Bermuda
  'BT': 8, // Bhutan
  'BO': 8, // Bolivia
  'BA': 8, // Bosnia and Herzegovina
  'BW': 7, // Botswana
  'BR': 11, // Brazil
  'IO': 7, // British Indian Ocean Territory
  'VG': 7, // British Virgin Islands
  'BN': 7, // Brunei
  'BG': 9, // Bulgaria
  'BF': 8, // Burkina Faso
  'BI': 8, // Burundi
  'KH': 9, // Cambodia
  'CM': 9, // Cameroon
  'CA': 10, // Canada
  'CV': 7, // Cape Verde
  'KY': 7, // Cayman Islands
  'CF': 8, // Central African Republic
  'TD': 9, // Chad
  'CL': 9, // Chile
  'CN': 11, // China
  'CO': 10, // Colombia
  'KM': 7, // Comoros
  'CK': 5, // Cook Islands
  'CR': 8, // Costa Rica
  'HR': 9, // Croatia
  'CU': 8, // Cuba
  'CY': 8, // Cyprus
  'CZ': 9, // Czech Republic
  'CD': 9, // Democratic Republic of the Congo
  'DK': 8, // Denmark
  'DJ': 6, // Djibouti
  'DM': 7, // Dominica
  'DO': 10, // Dominican Republic
  'TL': 8, // East Timor
  'EC': 9, // Ecuador
  'EG': 10, // Egypt
  'SV': 8, // El Salvador
  'GQ': 9, // Equatorial Guinea
  'ER': 7, // Eritrea
  'EE': 8, // Estonia
  'ET': 9, // Ethiopia
  'FJ': 7, // Fiji
  'FI': 10, // Finland
  'FR': 9, // France
  'GA': 7, // Gabon
  'GM': 7, // Gambia
  'GE': 9, // Georgia
  'DE': 11, // Germany
  'GH': 9, // Ghana
  'GI': 8, // Gibraltar
  'GR': 10, // Greece
  'GL': 6, // Greenland
  'GD': 7, // Grenada
  'GU': 7, // Guam
  'GT': 8, // Guatemala
  'GN': 9, // Guinea
  'GW': 7, // Guinea-Bissau
  'GY': 7, // Guyana
  'HT': 8, // Haiti
  'HN': 8, // Honduras
  'HK': 8, // Hong Kong
  'HU': 9, // Hungary
  'IS': 7, // Iceland
  'IN': 10, // India
  'ID': 11, // Indonesia
  'IR': 10, // Iran
  'IQ': 10, // Iraq
  'IE': 9, // Ireland
  'IL': 9, // Israel
  'IT': 10, // Italy
  'CI': 8, // Ivory Coast
  'JM': 7, // Jamaica
  'JP': 10, // Japan
  'JO': 9, // Jordan
  'KZ': 10, // Kazakhstan
  'KE': 9, // Kenya
  'KI': 8, // Kiribati
  'KW': 8, // Kuwait
  'KG': 9, // Kyrgyzstan
  'LA': 9, // Laos
  'LV': 8, // Latvia
  'LB': 8, // Lebanon
  'LS': 8, // Lesotho
  'LR': 7, // Liberia
  'LY': 9, // Libya
  'LI': 7, // Liechtenstein
  'LT': 8, // Lithuania
  'LU': 9, // Luxembourg
  'MO': 8, // Macau
  'MK': 8, // Macedonia
  'MG': 9, // Madagascar
  'MW': 7, // Malawi
  'MY': 10, // Malaysia
  'MV': 7, // Maldives
  'ML': 8, // Mali
  'MT': 8, // Malta
  'MH': 7, // Marshall Islands
  'MR': 8, // Mauritania
  'MU': 8, // Mauritius
  'MX': 10, // Mexico
  'FM': 7, // Micronesia
  'MD': 8, // Moldova
  'MC': 8, // Monaco
  'MN': 8, // Mongolia
  'ME': 8, // Montenegro
  'MS': 7, // Montserrat
  'MA': 9, // Morocco
  'MZ': 9, // Mozambique
  'MM': 9, // Myanmar
  'NA': 9, // Namibia
  'NR': 7, // Nauru
  'NP': 10, // Nepal
  'NL': 9, // Netherlands
  'AN': 7, // Netherlands Antilles
  'NC': 6, // New Caledonia
  'NZ': 9, // New Zealand
  'NI': 8, // Nicaragua
  'NE': 8, // Niger
  'NG': 10, // Nigeria
  'NU': 4, // Niue
  'NF': 6, // Norfolk Island
  'KP': 10, // North Korea
  'MP': 7, // Northern Mariana Islands
  'NO': 8, // Norway
  'OM': 8, // Oman
  'PK': 10, // Pakistan
  'PW': 7, // Palau
  'PA': 7, // Panama
  'PG': 7, // Papua New Guinea
  'PY': 9, // Paraguay
  'PE': 9, // Peru
  'PH': 10, // Philippines
  'PL': 9, // Poland
  'PT': 9, // Portugal
  'PR': 10, // Puerto Rico
  'QA': 8, // Qatar
  'CG': 9, // Republic of the Congo
  'RE': 9, // Réunion
  'RO': 10, // Romania
  'RU': 10, // Russia
  'RW': 9, // Rwanda
  'SH': 5, // Saint Helena
  'KN': 7, // Saint Kitts and Nevis
  'LC': 7, // Saint Lucia
  'PM': 6, // Saint Pierre and Miquelon
  'VC': 7, // Saint Vincent and the Grenadines
  'WS': 7, // Samoa
  'SM': 9, // San Marino
  'ST': 6, // Sao Tome and Principe
  'SA': 9, // Saudi Arabia
  'SN': 9, // Senegal
  'RS': 9, // Serbia
  'SC': 7, // Seychelles
  'SL': 8, // Sierra Leone
  'SG': 8, // Singapore
  'SK': 9, // Slovakia
  'SI': 9, // Slovenia
  'SB': 7, // Solomon Islands
  'SO': 7, // Somalia
  'ZA': 9, // South Africa
  'KR': 11, // South Korea
  'ES': 9, // Spain
  'LK': 9, // Sri Lanka
  'SD': 9, // Sudan
  'SR': 7, // Suriname
  'SZ': 7, // Swaziland
  'SE': 9, // Sweden
  'CH': 9, // Switzerland
  'SY': 9, // Syria
  'TW': 9, // Taiwan
  'TJ': 9, // Tajikistan
  'TZ': 9, // Tanzania
  'TH': 9, // Thailand
  'TG': 8, // Togo
  'TK': 4, // Tokelau
  'TO': 5, // Tonga
  'TT': 7, // Trinidad and Tobago
  'TN': 8, // Tunisia
  'TR': 10, // Turkey
  'TM': 8, // Turkmenistan
  'TC': 7, // Turks and Caicos Islands
  'TV': 6, // Tuvalu
  'UG': 9, // Uganda
  'UA': 9, // Ukraine
  'AE': 9, // United Arab Emirates
  'GB': 10, // United Kingdom
  'US': 10, // United States
  'UY': 9, // Uruguay
  'UZ': 9, // Uzbekistan
  'VU': 7, // Vanuatu
  'VA': 9, // Vatican City
  'VE': 11, // Venezuela
  'VN': 10, // Vietnam
  'VI': 10, // Virgin Islands
  'WF': 6, // Wallis and Futuna
  'EH': 9, // Western Sahara
  'YE': 9, // Yemen
  'ZM': 9, // Zambia
  'ZW': 9, // Zimbabwe
};
