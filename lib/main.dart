import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/get_route_generator.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MyAirDeal());
}

class MyAirDeal extends StatelessWidget {
  const MyAirDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
          getPages: GetXRouterConfig.routes,
          initialRoute: Routes.initial,
           debugShowCheckedModeBanner: false,

          ));
  }
}
