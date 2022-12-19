
import 'package:final_mydanreset/controller/profile_controller.dart';
import 'package:final_mydanreset/core/components/colors.dart';
import 'package:final_mydanreset/screens/profile_screen/profile_widgets/profile.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
 import 'package:flutter_svg/svg.dart';
 import 'package:get/get.dart';

import '../../widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (profileCon)
      {
        return  SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor:AppColors.mainColorWhite ,
              appBar: AppBar(
                backgroundColor:AppColors.mainColorWhite ,
                elevation: 0,
                title: const Text("البروفايل",
                  style: TextStyle(
                    color: Color(0xff1E1E1E),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),),
                centerTitle: true,
                leading: IconButton(
                  onPressed: (){
                    Get.back();
                  },
                  icon: SvgPicture.asset("assets/images/Vector.svg"),
                ),

              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child:SingleChildScrollView(
                  child:  Column(
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
                               profileCon.openImagePicker(context);
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
                        text: "الاسم كامل",
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
                        textColor : Color(0xff525252),
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
                        textColor : Color(0xff525252),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: AppColors.mainColorWhite,
                          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          hintText: "598696102",
                          hintStyle:const TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon:const  Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child:  Text("+970",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
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
                        text: "تاريخ الميلاد",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        textColor : Color(0xff525252),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: const Color(0xffFFFFFF),
                          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          hintText: "2022/10/08",
                          hintStyle:const TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: const  Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
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
                        text: "الجنسية",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        textColor : Color(0xff525252),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: const Color(0xffFFFFFF),
                          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          hintText: "مصر",
                          hintStyle:const TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: const  Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
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
                        textColor : Color(0xff525252),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: const Color(0xffFFFFFF),
                          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          hintText: "المهندسين",
                          hintStyle:const TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: const  Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
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
                        text: "العنوان",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        textColor : Color(0xff525252),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: const Color(0xffFFFFFF),
                          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          hintText: "ميت عقبه - شارع وادي النيل",
                          hintStyle:const TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: const  Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
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
                        text: "الرمز البريدي",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        textColor : Color(0xff525252),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: const Color(0xffFFFFFF),
                          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          hintText: "1234",
                          hintStyle:const TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: const  Icon(IconlyLight.arrowDown2,color: Color(0xff1E1E1E),),
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
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
