import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/navbar/navbar.dart';
import 'package:myairdeal/application/presentation/screens/splash/splash_screen.dart';

class GetXRouterConfig{
  static final List<GetPage> routes=[
    GetPage(
      name: Routes.initial,
      page: () => const ScreenSplash(),
    ),
    GetPage(
      name: Routes.bottomBar,
      page: () => const ScreenNavbar(),
    ),
  ];
}