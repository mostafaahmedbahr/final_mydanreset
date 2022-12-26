import 'package:final_mydanreset/widgets/custom_button.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';
class AddRoomScreen extends StatelessWidget {
  const AddRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.mainColorWhite,
          appBar: CustomAppBar(
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
            titleContent: const Text(
              "اضف غرفة",
              style: TextStyle(
                color: AppColors.mainColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          body: Padding(
            padding:const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(text: "بيانات العرض",
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    textColor: AppColors.mainColorBlack,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      //<-- SEE HERE
                      fillColor: AppColors.mainColorWhite,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      hintText: " اسم الغرفة",
                      hintStyle: const TextStyle(
                        color: AppColors.mainColorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      filled: true,
                      //<-- SEE HERE
                      fillColor: AppColors.mainColorWhite,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      hintText: "وصف الغرفة",
                      hintStyle: const TextStyle(
                        color: AppColors.mainColorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 84,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border:   Border.all(
                        width: 1, color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Row(
                                children:  [
                                  Image.asset("assets/images/img_14.png",
                                    height: 20,
                                    width: 20,
                                    color: const Color(0xff000000),
                                  ),
                                  const SizedBox(width: 10,),
                                  const    Text("بالغ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )
                                    ),
                                    child: const Center(child:Icon(Icons.remove,
                                      color: Color(0xffBABABA),
                                      size: 20,)),
                                  ),
                                  const SizedBox(width: 13,),
                                  const Text("2",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  const SizedBox(width: 13,),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color:const Color(0xff7A7890),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )
                                    ),
                                    child:const Center(child: Icon(Icons.add,
                                      size: 20,
                                      color: Color(0xffFFFFFF),)),
                                  ),

                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: [
                              Row(
                                children:  [
                                  Image.asset("assets/images/img_16.png",
                                    height: 20,
                                    width: 20,),
                                  const SizedBox(width: 10,),
                                  const  Text("طفل",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )
                                    ),
                                    child: const Center(child:Icon(Icons.remove,
                                      color: Color(0xffBABABA),
                                      size: 20,)),
                                  ),
                                  const SizedBox(width: 13,),
                                  const Text("2",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  const SizedBox(width: 13,),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color:const Color(0xff7A7890),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )
                                    ),
                                    child:const Center(child: Icon(Icons.add,
                                      size: 20,
                                      color: Color(0xffFFFFFF),)),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      //<-- SEE HERE
                      fillColor: AppColors.mainColorWhite,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      hintText: "مساحة الغرفة",
                      hintStyle: const TextStyle(
                        color: AppColors.mainColorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      //<-- SEE HERE
                      fillColor: AppColors.mainColorWhite,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      hintText: "اختر محتويات الغرفة",
                      hintStyle: const TextStyle(
                        color: AppColors.mainColorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: const Icon(Icons.arrow_back_ios_new,
                      color: AppColors.mainColorBlack,),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      //<-- SEE HERE
                      fillColor: AppColors.mainColorWhite,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      hintText: "سعر الليلة الواحدة",
                      hintStyle: const TextStyle(
                        color: AppColors.mainColorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap:(){

                            },
                            child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.mainColor,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child:  true ?const  Center(
                                  child:  Icon(Icons.check,color:AppColors.mainColor,size: 20,),
                                ) :const  Text("")),
                          ),
                          const SizedBox(width: 10,),
                          const CustomText(text: "افطار",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.mainColorBlack,)
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap:(){

                            },
                            child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.mainColor,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child:  true ?const  Center(
                                  child:  Icon(Icons.check,color:AppColors.mainColor,size: 20,),
                                ) :const  Text("")),
                          ),
                          const SizedBox(width: 10,),
                          const CustomText(text: "غداء",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.mainColorBlack,)
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap:(){

                            },
                            child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.mainColor,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child:  true ?const  Center(
                                  child:  Icon(Icons.check,color:AppColors.mainColor,size: 20,),
                                ) :const  Text("")),
                          ),
                          const SizedBox(width: 10,),
                          const CustomText(text: "عشاء",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.mainColorBlack,)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(text: "ارفق الصور",
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  textColor: AppColors.mainColorBlack,),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                      height: 60,
                      width: double.infinity,
                      btnColor: AppColors.mainColor,
                      btnText: const CustomText(text: "اضف",
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        textColor: AppColors.mainColorWhite,) ,
                      onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
