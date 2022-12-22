  import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../../controller/customer_controller/home_controller.dart';
import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../notifications_screen/notifications_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeCon = Get.put(HomeController());
    return SafeArea(
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.mainColorWhite,
            body: homeCon.screens[homeCon.bottomIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: homeCon.bottomIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(IconlyBold.home),
                  label: "الرئيسية",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.search),
                  label: "البحث",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyBold.calendar),
                  label: "حجوزاتى",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ads_click_outlined),
                  label: "الاعلانات",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  label: "المزيد",
                ),
              ],
              backgroundColor: AppColors.mainColorWhite,
              onTap: (index) {
                homeCon.changeBottomNavBarIndex(index);
                // print(index);
              },
              selectedItemColor: AppColors.mainColor,
              unselectedItemColor: AppColors.mainColorGrey,
            ),
          );
        },

      ),
    );
  }
// Stack(
//   children: [
//     //assets/images/img_21.png
//     const   ClipRRect(
//      borderRadius:   BorderRadius.only(
//        bottomRight: Radius.circular(80),
//        bottomLeft: Radius.circular(80),
//      ),
//      child:  Image(image: AssetImage("assets/images/img_21.png"),
//        height: 300,
//        width: double.infinity,
//        fit: BoxFit.cover,
//      ),
//    ),
//     Container(
//       height: 300,
//       width: double.infinity,
//       decoration: const  BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomRight: Radius.circular(80),
//           bottomLeft: Radius.circular(80),
//         ),
//         color: AppColors.mainColorWhite,
//         image:  DecorationImage(
//           image: AssetImage("assets/images/img_24.png",),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ],
// ),
}


