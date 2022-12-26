
import 'package:final_mydanreset/core/components/colors.dart';
 import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
 import '../../controller/s_p_controller/sp_profile_controller.dart';
import '../../screens/my_reservations_screen/MyReservations_widgets/build_status_widget.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../sp_rating_screen/sp_rating_screen.dart';

class SpProfileScreen extends StatelessWidget {
  const SpProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpProfileController>(
      init: SpProfileController(),
      builder: (spProfileCon)
      {
        return  SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor:AppColors.mainColorWhite ,
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
                  text: "البروفايل",
                  textColor: AppColors.mainColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,

                ),
              ),
              body:   SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 56,
                        width: double.infinity,
                        color: const Color(0xff06B3C4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BuildStatusWidget(
                                text: "البيانات الشخصية",
                                color: spProfileCon.pageIndex==1 ? AppColors.hoverMainColor : AppColors.mainColor,
                                onTap: (){
                                  spProfileCon.changeIndex(spProfileCon.pageIndex=1);
                                  print(spProfileCon.pageIndex);
                                },
                              ),

                              BuildStatusWidget(
                                text: "التقييمات",
                                color: spProfileCon.pageIndex==2 ? AppColors.hoverMainColor : AppColors.mainColor,
                                onTap: (){
                                  spProfileCon.changeIndex(spProfileCon.pageIndex=2);
                                  print(spProfileCon.pageIndex);
                                },

                              ),

                            ],
                          ),
                        ),
                      ),
                   spProfileCon.pageIndex == 1 ?     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30,),
                            Align(
                              alignment: Alignment.center,
                              child:  Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  const  CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/img.png",),
                                    backgroundColor: Color(0xffFFFFFF),
                                    minRadius: 50,
                                    maxRadius: 50,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      spProfileCon.openImagePicker(context);
                                    },
                                    child:const  Icon(Icons.camera_alt,
                                      size: 35,
                                      color: AppColors.mainColor,),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30,),
                            const CustomText(
                              text: "الاسم الفندق",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor : Color(0xff525252),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: AppColors.mainColorWhite,
                                contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                hintText: "مصطفى بحر",
                                hintStyle:const TextStyle(
                                  color:AppColors.mainColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const CustomText(
                              text: "البريد الالكترونى",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor : AppColors.darkGrey,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: AppColors.mainColorWhite,
                                contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                hintText: "sadi.w.h@gmail.com",
                                hintStyle:const TextStyle(
                                  color:AppColors.mainColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const CustomText(
                              text: "رقم الموبايل",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor : AppColors.darkGrey,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: AppColors.mainColorWhite,
                                contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                hintText: "598696102",
                                hintStyle:const TextStyle(
                                  color: AppColors.mainColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                suffixIcon:const  Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child:  Text("+970",
                                    style: TextStyle(
                                      color: AppColors.mainColorBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const CustomText(
                              text: "وصف الفندق",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor : AppColors.darkGrey,
                            ),
                            TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: const Color(0xffFFFFFF),
                                contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                hintText: "وصف الفندق",
                                hintStyle:const TextStyle(
                                  color: AppColors.mainColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                 enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: const Color(0xffFFFFFF),
                                contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                hintText: "حدد المكان على الخريطة",
                                hintStyle:const TextStyle(
                                  color: AppColors.mainColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                suffixIcon: const  Icon(IconlyLight.location,color: AppColors.mainColorBlack,),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const CustomText(
                              text: "المنطقة",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor : AppColors.darkGrey,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: const Color(0xffFFFFFF),
                                contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                hintText: "المهندسين",
                                hintStyle:const TextStyle(
                                  color: AppColors.mainColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                suffixIcon: const  Icon(IconlyLight.arrowDown2,color: AppColors.mainColorBlack,),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    width: 1, color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40,),
                            CustomButton(
                              width: double.infinity,
                              height: 50,
                              btnColor: AppColors.mainColor,
                              btnText:const  CustomText(text: "حفظ",
                                fontWeight: FontWeight.w600,
                                fontSize: 16,),
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ) :  SpRatingScreen(),
                    ],
                
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
