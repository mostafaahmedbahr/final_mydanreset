import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/components/colors.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_text.dart';
import '../TouristGroupsOfferDetailsScreen/tourist_groups_offer_details_screen.dart';
  class TouristGroupsAddsScreen extends StatelessWidget {
  const TouristGroupsAddsScreen({Key? key}) : super(key: key);

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
                text: "العروض",
                textColor: AppColors.mainColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            backgroundColor:AppColors.mainColorWhite ,
            body: Padding(
              padding:const EdgeInsets.all(20),
              child: ListView.separated(
                physics:const BouncingScrollPhysics(),
                itemBuilder: (context,index){
                  return  InkWell(
                    onTap: (){
                      Get.to(()=>TouristGroupsOfferDetailsScreen());
                    },
                    child: Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: AppColors.grey,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/unsplash_W2Dta_Yiwfw (1).png",fit: BoxFit.cover,width: double.infinity,
                            height: 120,),
                          const  CustomText(text: "رحلة الى شاطئ النيل مع الإقامة في الفندق",
                            textColor: AppColors.secondColor,
                            fontSize: 17,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w800,),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context,index){
                  return const SizedBox(height: 10,);
                },
                itemCount: 10,
              ),
            ),
          ),
        ));
  }
}
