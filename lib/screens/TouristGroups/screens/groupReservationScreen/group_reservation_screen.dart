import 'package:final_mydanreset/screens/TouristGroups/screens/ToursitGroupsBillScreen/toursit_groups_bill_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/components/colors.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';
import '../../tourist_groups_widgets/custom_sixedBox_h.dart';


class GroupReservationScreen extends StatelessWidget {
  const GroupReservationScreen({Key? key}) : super(key: key);

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
                text: "حجز القروب",
                textColor: AppColors.mainColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            backgroundColor:AppColors.mainColorWhite ,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(text: "بيانات الحجز",
                      fontSize:17 ,
                      fontWeight:FontWeight.w800,
                      textColor: AppColors.mainColorBlack,
                    ),
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        hintText: "حدد تاريخ البداية للرحلة",
                        hintStyle:const TextStyle(
                          color: AppColors.mainColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon:const Icon(IconlyLight.calendar,
                          color:AppColors.mainColorBlack,),
                        suffixIcon: const  Icon(IconlyLight.arrowLeft2,color: Color(0xff1E1E1E),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1, color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:const BorderSide(
                            width: 1, color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        hintText: "اسم قائد الرحلة",
                        hintStyle:const TextStyle(
                          color: AppColors.mainColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1, color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:const BorderSide(
                            width: 1, color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: AppColors.mainColorWhite,
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        hintText: "رقم جوال قائد الرحلة",
                        hintStyle:const TextStyle(
                          color: Color(0xff1E1E1E),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon:   Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children:const [
                              Text("+970",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),),
                              SizedBox(width: 10,),
                              Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
                            ],
                          ),
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
                    const CustomSizedBoxH(h: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        CustomText(text: "بيانات الاشخاص",
                          fontSize:17 ,
                          fontWeight:FontWeight.w800,
                          textColor: AppColors.mainColorBlack,
                        ),
                        CustomText(text: " + اضافة",
                          fontSize:17 ,
                          fontWeight:FontWeight.w800,
                          textColor: AppColors.mainColor,
                        ),
                      ],
                    ),
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: AppColors.mainColorWhite,
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        hintText: "الاسم كامل",
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
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: AppColors.mainColorWhite,
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        hintText: "الايميل",
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
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: AppColors.mainColorWhite,
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        hintText: "رقم الجوال",
                        hintStyle:const TextStyle(
                          color: Color(0xff1E1E1E),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon:   Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children:const [
                              Text("+970",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),),
                              SizedBox(width: 10,),
                              Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
                            ],
                          ),
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
                    const CustomSizedBoxH(h: 14,),
                    const CustomText(text: "ارفق صورة جواز السفر",
                      fontSize:17 ,
                      fontWeight:FontWeight.w800,
                      textColor: AppColors.mainColorBlack,
                    ),
                    const CustomSizedBoxH(h: 14,),
                    Container(
                      height: 88,
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.secondColorWhite,
                        ),
                      ),
                      child: const Center(
                        child: Icon(Icons.upload),
                      ),
                    ),
                    const CustomSizedBoxH(h: 20,),
                    const Divider(
                      thickness: 2,
                      color: AppColors.secondColorWhite,
                    ),
                    const CustomSizedBoxH(h: 20,),
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.secondColorWhite,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const[
                                CustomText(text: "المسافر رقم 1",
                                fontSize:14 ,
                                fontWeight:FontWeight.w800,
                                textColor: AppColors.mainColorBlack,
                              ),
                              Icon(Icons.delete_outlined,color: Colors.red,),
                            ],
                          ),
                          const SizedBox(height: 9,),
                       const   Divider(
                            color: AppColors.secondColorWhite,
                            thickness: 2,
                          ),
                          const SizedBox(height: 6,),
                         const CustomText(text: "سعدي حرب",
                            fontSize:14 ,
                            fontWeight:FontWeight.w500,
                            textColor: AppColors.mainColorBlack,
                          ),
                          const SizedBox(height: 6,),
                        const  CustomText(text: "sadi.w.h@gmail.com",
                            fontSize:14 ,
                            fontWeight:FontWeight.w500,
                            textColor: AppColors.mainColorBlack,
                          ),
                          const SizedBox(height: 6,),
                         const CustomText(text: "00970598696102",
                            fontSize:14 ,
                            fontWeight:FontWeight.w500,
                            textColor: AppColors.mainColorBlack,
                          ),
                          const SizedBox(height: 9,),
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/Frame (1).svg"),
                              const CustomText(text: "Passport.img",
                                fontSize:14 ,
                                fontWeight:FontWeight.w800,
                                textColor: AppColors.mainColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const CustomSizedBoxH(h: 50,),
                    CustomButton(
                      height: 50,
                      width: double.infinity,
                      btnColor: AppColors.mainColor,
                      btnText: const CustomText(
                        text: "التالي",
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        textColor: AppColors.mainColorWhite,
                      ),
                      onPressed: (){
                        Get.to(()=>TouristGroupsBillScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
