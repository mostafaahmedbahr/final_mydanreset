 import 'package:final_mydanreset/Service_provider_screens/AdRoomScreen/add_room_screen.dart';
import 'package:final_mydanreset/Service_provider_screens/SpMoreScreen/sp_more_screen.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../controller/s_p_controller/s_p_home_controller.dart';
import '../../core/components/colors.dart';
 import '../../widgets/custom_app_bar.dart';
import '../SpHomeScreen/sp_home_screen.dart';
import '../SpNotificationScreen/sp_notification_screen.dart';
import '../SpReserveScreen/sp_reserve_screen.dart';
import '../spOffersScreen/sp_offers_screen.dart';

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
                  onPressed: () {
                    Navigator.push(
                        context, PageTransition(
                        duration: const Duration(milliseconds: 400),
                        reverseDuration: const Duration(milliseconds: 400),
                        type: PageTransitionType.leftToRight,
                        child:   SpNotificationsScreen(),
                        inheritTheme: true,
                        ctx: context));

                  },
                  icon: Image.asset(
                    "assets/images/img_11.png",
                    height: 20,
                  ),
                ),
              ],
            ),
            backgroundColor: AppColors.mainColorWhite,
            body: PageStorage(
              bucket: c.bucket,
              child: c.currentScreen,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
              Get.to(()=>const AddRoomScreen());
            },
              backgroundColor: AppColors.mainColor,
              hoverElevation: 10,
              splashColor: Colors.grey,
              tooltip: 'اضافة',
              elevation: 4,
              child: const Icon(Icons.add),
            ),
            floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
            bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              shape:const CircularNotchedRectangle(),
              notchMargin: 10,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            minWidth: 40,
                              onPressed: (){
                              c.currentScreen = const SpHomeScreen();
                              c.changeBottomNavBarIndex(c.bottomNavBarIndex=0);
                              },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(IconlyBold.home,color: c.bottomNavBarIndex==0 ?  AppColors.mainColor : AppColors.grey,),
                                CustomText(text: "الرئيسية",
                                textColor: c.bottomNavBarIndex==0 ?  AppColors.mainColor : AppColors.grey,
                                fontSize:12 ,
                                fontWeight:FontWeight.w800 ,
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: (){
                              c.currentScreen = const SpReserveScreen();
                              c.changeBottomNavBarIndex(c.bottomNavBarIndex=1);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(IconlyBold.calendar,color: c.bottomNavBarIndex==1 ?  AppColors.mainColor : AppColors.grey,),
                                CustomText(text: "الحجوزات",
                                  textColor: c.bottomNavBarIndex==1 ?  AppColors.mainColor : AppColors.grey,
                                  fontSize:12 ,
                                  fontWeight:FontWeight.w800 ,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 40,
                            onPressed: (){
                              c.currentScreen = const SpOffersScreen();
                              c.changeBottomNavBarIndex(c.bottomNavBarIndex=2);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/images/ion_clipboard-outline.svg",color: c.bottomNavBarIndex==2 ?  AppColors.mainColor : AppColors.grey,),
                                CustomText(text: "عروضي",
                                  textColor: c.bottomNavBarIndex==2 ?  AppColors.mainColor : AppColors.grey,
                                  fontSize:12 ,
                                  fontWeight:FontWeight.w800 ,
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            minWidth: 40,
                            onPressed: (){
                              c.currentScreen =   SpMoreScreen();
                              c.changeBottomNavBarIndex(c.bottomNavBarIndex=3);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.more_horiz ,color: c.bottomNavBarIndex==3 ?  AppColors.mainColor : AppColors.grey,),
                                CustomText(text: "المزيد",
                                  textColor: c.bottomNavBarIndex==3 ?  AppColors.mainColor : AppColors.grey,
                                  fontSize:12 ,
                                  fontWeight:FontWeight.w800 ,
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                ),
              ),
            ),


          );
        },

      ),
    ));
  }
}
