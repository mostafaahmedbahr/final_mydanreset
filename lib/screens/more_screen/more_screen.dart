import 'package:flutter/material.dart';
 import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../../controller/home_controller.dart';
import '../profile_screen/profile_screen.dart';
import 'more_screen_widget/divider_widget.dart';
import 'more_screen_widget/list_tile.dart';
class MoreScreen extends GetView<HomeController> {
    MoreScreen({Key? key}) : super(key: key);
  // var homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child :  Scaffold(
            backgroundColor:const Color(0xffFFFFFF) ,
            body:Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child:  Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      )
                  ),
                  child: ListView(
                    physics:const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      ListTileWidget(
                        onTap: (){},
                        label: "English",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (5).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "طلباتي",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (6).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "تغير العملة",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (7).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "المحفظة",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (5).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){
                          Navigator.push(
                              context, PageTransition(
                              duration: const Duration(milliseconds: 400),
                              reverseDuration: const Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRight,
                              child:   const ProfileScreen(),
                              inheritTheme: true,
                              ctx: context));
                        },
                        label: "البروفايل",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (6).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "من نحن",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (7).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "معلومات",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (8).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "تواصل معنا",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (9).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "الشروط والاحاكم",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (10).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "سياسة الخصوصية",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (11).svg"),
                      ),
                      const DividerWidget(),
                      ListTileWidget(
                        onTap: (){},
                        label: "خروج",
                        iconDataWidget: SvgPicture.asset("assets/images/Vector (11).svg"),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ),
    ) ,
        ));
  }
}


