import 'package:final_mydanreset/screen1.dart';
import 'package:final_mydanreset/screens/ads_screen/ads_screen.dart';
import 'package:final_mydanreset/screens/guest_screen/guest_screen.dart';
import 'package:final_mydanreset/screens/home_screen/home_screen.dart';
import 'package:final_mydanreset/screens/hotels_details_screen/hotels_details.dart';
import 'package:final_mydanreset/screens/search/hotels_search/hotels_search_result_screen.dart';
import 'package:final_mydanreset/screens/more_screen/more_screen.dart';
import 'package:final_mydanreset/screens/rooms_details_screen/room_details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
 import 'Service_provider_screens/s_p_home_screen/s_p_home_screen.dart';
import 'screens/classification_screen/classification_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(  const MyApp(), // Wrap your app
   );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      theme: ThemeData(fontFamily: 'AvenirArabic'),
      debugShowCheckedModeBanner: false,
      home:  const   Directionality(
          textDirection: TextDirection.rtl,
          child: ServiceProviderHomeScreen()),
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),


    );
  }
}
