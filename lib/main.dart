import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/get_route_generator.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/core/binding/all_controller_binding.dart';

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
        theme: ThemeData(
          primaryColor: kBluePrimary,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: kGreyLightBackground,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: poppins,
              ),
        ),
        getPages: GetXRouterConfig.routes,
        initialRoute: Routes.initial,
        debugShowCheckedModeBanner: false,
        initialBinding: AllControllerBinding(),
      ),
    );
  }
}
