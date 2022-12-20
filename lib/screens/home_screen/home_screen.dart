import 'package:final_mydanreset/controller/home_controller.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

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

            // body: Padding(
            //   padding: const EdgeInsets.all(22.0),
            //   child: SingleChildScrollView(
            //     physics:const BouncingScrollPhysics(),
            //     child: Column(
            //       children: [
            //         SizedBox(
            //           height: 30,
            //           child:  ListView.separated(
            //             physics:const BouncingScrollPhysics(),
            //             scrollDirection: Axis.horizontal,
            //             itemBuilder: (context,index)
            //             {
            //               return GestureDetector(
            //                 onTap: (){
            //                   setState(() {
            //                     currentPageIndex = index;
            //                     print(currentPageIndex);
            //                   });
            //                 },
            //                 child: Container(
            //                   width: 94,
            //                   height: 30,
            //                   decoration: BoxDecoration(
            //                     color:currentPageIndex==index ? const Color(0xff06B3C4) :  const Color(0xffFFFFFF),
            //                     border: Border.all(
            //                       color:const Color(0xffDFDFDF),
            //                     ),
            //                     borderRadius: BorderRadius.circular(30),
            //                   ),
            //                   child: Row(
            //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                     children: [
            //                       Image.asset("${suggestionsIconsImages[index]}",
            //                         color: currentPageIndex==index ? Colors.white : Colors.grey,
            //                         height: 15,
            //                         width: 17.5,),
            //                       Text("${suggestions[index]}",
            //                         style: TextStyle(
            //                           fontSize: 17,
            //                           color: currentPageIndex==index ? Colors.white : Colors.grey,
            //                         ),),
            //
            //                     ],
            //                   ),
            //                 ),
            //               );
            //             },
            //             separatorBuilder: (context,index)
            //             {
            //               return const SizedBox(width: 10,);
            //             },
            //             itemCount: suggestions.length,
            //           ),
            //         ),
            //         const SizedBox(height: 20,),
            //         if(currentPageIndex==0)
            //           HotelsScreen(),
            //         if(currentPageIndex==1)
            //           Column(
            //             children: [
            //               Text("المطار"),
            //
            //             ],
            //           ),
            //         if(currentPageIndex==2)
            //           Text("سيارة"),
            //         if(currentPageIndex==3)
            //           Column(
            //             children: [
            //               Text("شقق"),
            //
            //             ],
            //           ),
            //         if(currentPageIndex==4)
            //           Text("اراضى"),
            //         if(currentPageIndex==5)
            //           Column(
            //             children: [
            //               Text("منشات"),
            //
            //             ],
            //           ),
            //
            //       ],
            //     ),
            //   ),
            // ),
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


