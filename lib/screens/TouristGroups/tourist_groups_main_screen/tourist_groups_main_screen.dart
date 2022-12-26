import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';

import '../../../core/components/colors.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_text.dart';
import '../../notifications_screen/notifications_screen.dart';
import '../TouristGroupsAddsScreen/tourist_groups_adds_screen.dart';
class TouristGroupsMainScreen extends StatelessWidget {
  const TouristGroupsMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: CustomAppBar(
              centerTitle: true,
              appBarToolbarHeight: 70,
              automaticallyLeading: true,
              appBarBackgroundColor: AppColors.mainColorWhite,
              appElevation: 0,
              leadingWidget: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: SvgPicture.asset("assets/images/Vector.svg"),
              ),
              titleContent: const CustomText(
                text: "قروبات سياحية",
                textColor: AppColors.mainColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w900,

              ),
            ),
            backgroundColor:AppColors.mainColorWhite ,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(()=>TouristGroupsAddsScreen());
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.grey,
                        ),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/images/Directions-bro 1.svg"),
                        const  CustomText(text: "عروض القروبات",
                          fontWeight:FontWeight.w800 ,
                          fontSize: 16,
                          textColor: AppColors.mainColorBlack,
                          ),
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(height: 50,),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/images/Lost-bro 1.svg"),
                        const  CustomText(text: "انشئ قروبك الخاص",
                          fontWeight:FontWeight.w800 ,
                          fontSize: 16,
                          textColor: AppColors.mainColorBlack,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
