 import 'package:final_mydanreset/Service_provider_screens/AdRoomScreen/add_room_screen.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../controller/s_p_controller/s_p_home_controller.dart';
import '../../core/components/colors.dart';
 import '../../widgets/custom_app_bar.dart';

class ServiceProviderLayoutScreen extends StatelessWidget {
  const ServiceProviderLayoutScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: GetBuilder<SpHomeController>(
        init: SpHomeController(),
        builder: (c)
        {
          return Scaffold(
            appBar: CustomAppBar(
              appBarToolbarHeight: 70,
              automaticallyLeading: true,
              appBarBackgroundColor: AppColors.mainColorWhite,
              appElevation: 0,
              titleContent: const Text(
                "Meydanrest",
                style: TextStyle(
                  color: AppColors.mainColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              actionsWidgets: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/img_11.png",
                    height: 20,
                  ),
                ),
              ],
            ),
            backgroundColor: AppColors.mainColorWhite,
            body: c.screens[c.bottomNavBarIndex],
            bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              shape:const CircularNotchedRectangle(),
              notchMargin: 0.01,
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: kBottomNavigationBarHeight * 1.1,
                child: Container(
                  decoration:const BoxDecoration(
                    color: AppColors.mainColorWhite,
                    border: Border(
                      top: BorderSide(
                        color: AppColors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: BottomNavigationBar(
                    onTap: (index){
                      c.changeBottomNavBarIndex(index);
                      c.bottomNavBarIndex==2;
                    },
                    backgroundColor: AppColors.mainColor,
                    unselectedItemColor: AppColors.grey,
                    selectedItemColor: AppColors.mainColor,
                    currentIndex: c.bottomNavBarIndex,
                    items:  [
                      const  BottomNavigationBarItem(
                        icon: Icon(IconlyBold.home),
                        label: "الرئيسية",
                      ),
                      const  BottomNavigationBarItem(
                        icon: Icon(IconlyBold.calendar),
                        label: "حجوزاتى",
                      ),
                      const   BottomNavigationBarItem(
                        activeIcon: null,
                        icon: Icon(null),
                        label:  'أضافة',
                      ),
                      BottomNavigationBarItem(
                        icon: SvgPicture.asset("assets/images/ion_clipboard-outline.svg",
                        color:c.bottomNavBarIndex==3 ?  AppColors.mainColor : AppColors.grey,),
                        label: "عروضى",
                      ),
                      const  BottomNavigationBarItem(
                        icon: Icon(Icons.more_horiz),
                        label: "المزيد",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                backgroundColor: AppColors.mainColor,
                hoverElevation: 10,
                splashColor: Colors.grey,
                tooltip: 'اضافة',
                elevation: 4,
                child: const Icon(Icons.add),
                onPressed: (){
                  Get.to(()=>AddRoomScreen());
                },
              ),
            ),
          );
        },

      ),
    ));
  }
}
