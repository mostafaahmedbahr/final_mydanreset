import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/components/colors.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';
import '../../tourist_groups_widgets/custom_sixedBox_h.dart';
import 'offers_details.dart';
class CreateYourOwnGroupScreen extends StatelessWidget {
  const CreateYourOwnGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // بيقلب اى صورة حجمها كبير وممكن تعمل كراش داخل الابليكشن
    debugInvertOversizedImages = true;
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
                text: "انشئ قروبك الخاص",
                textColor: AppColors.mainColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w900,

              ),
            ),
            backgroundColor:AppColors.mainColorWhite ,
            body: SingleChildScrollView(
              child: Padding(
                padding:const EdgeInsets.all(20),
                child: Column(
                  children: [
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
                        hintText: "اختر الدولة",
                        hintStyle:const TextStyle(
                          color: AppColors.mainColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
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
                        hintText: "حدد المدن التي تريد زيارتها",
                        hintStyle:const TextStyle(
                          color: AppColors.mainColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
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
                        hintText: "عدد الاشخاص",
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
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        hintText: "المزانية المتوقعة لشخص",
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
                    const CustomSizedBoxH(h: 20,),
                    const Divider(
                      thickness: 2,
                      color: Colors.black87,
                    ),
                    const CustomSizedBoxH(h: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        hintText: "اختر فئة الفندق",
                        hintStyle:const TextStyle(
                          color: AppColors.mainColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
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
                        hintText: "اسم الفندق",
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
                   Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          activeColor: AppColors.mainColor,
                          title: const CustomText(
                            text: "غرفة",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            textColor:AppColors.mainColorBlack ,
                          ),
                          value: "غرفة",
                          groupValue: "غرفة",
                          onChanged: (value){

                          },
                        ),
                      ),
                       Expanded(
        child: RadioListTile(
          activeColor: AppColors.mainColor,
          title: const CustomText(
              text: "شقة فندقية",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              textColor:AppColors.mainColorBlack ,
          ),
          value: "شقة فندقية",
          groupValue: "شقة فندقية",
          onChanged: (value){

          },
        ),
      ),

                    ],
                  ),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        hintText: "وصف الرحلة",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        CustomText(text: "حجز تذكرة طياران",
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
                        fillColor: const Color(0xffFFFFFF),
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        hintText: "نقطة الانطلاق من مطار",
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
                    const CustomSizedBoxH(h: 14,),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: const Color(0xffFFFFFF),
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        hintText: "نقطة الوصول الي مطار",
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
                    const CustomSizedBoxH(h: 20,),
                    const Divider(
                      thickness: 2,
                      color: AppColors.secondColorWhite,
                    ),
                    const CustomSizedBoxH(h: 20,),
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      height: 120,
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
                              CustomText(text: "رحلة سفر رقم 1",
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
                          const CustomText(text: "من مطار الرياض",
                            fontSize:14 ,
                            fontWeight:FontWeight.w500,
                            textColor: AppColors.mainColorBlack,
                          ),
                          const SizedBox(height: 6,),
                          const  CustomText(text: "الى مطار القاهرة",
                            fontSize:14 ,
                            fontWeight:FontWeight.w500,
                            textColor: AppColors.mainColorBlack,
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
                        text: "ارسال الطلب",
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        textColor: AppColors.mainColorWhite,
                      ),
                      onPressed: (){
                        Get.to(()=>TGOfferDetailsScreen());
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
