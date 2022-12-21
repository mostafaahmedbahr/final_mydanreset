
 import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/Classification_controller.dart';
import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class ClassificationScreen extends StatelessWidget {
  const ClassificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor:AppColors.mainColorWhite,
            appBar:  CustomAppBar(
              appBarToolbarHeight: 70,
              automaticallyLeading: true,
              appBarBackgroundColor: AppColors.mainColorWhite,
              appElevation: 0,
              leadingWidget: IconButton(
                onPressed: (){
                  Get.back();
                },
                icon: SvgPicture.asset("assets/images/Vector.svg"),
              ),

                titleContent :const CustomText(
                  text: "التصنيف",
                  textColor:AppColors.mainColorBlack ,
                  fontSize:20 ,
                  fontWeight:  FontWeight.w900,
                ),
              actionsWidgets:const [
                   Padding(
                     padding: EdgeInsets.all(20),
                     child:    CustomText(
                       text: "اعادة",
                       textColor:AppColors.secondColor ,
                       fontSize:17 ,
                       fontWeight: FontWeight.w800,
                     ),
                   ),
                ],
            ),
            body: GetBuilder<ClassificationController>(
              init: ClassificationController(),
              builder: (c)
              {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                            hintText: "اسم الفندق",
                            hintStyle:const TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            prefixIcon:const Icon(IconlyLight.search,
                              color:AppColors.mainColorBlack,),
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
                        const SizedBox(height: 12,),
                        Container(
                          height:120 ,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color:AppColors.mainColorWhite,
                          ),
                          child:Padding(
                            padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CustomText(
                                  text: "مدى السعر",
                                  textColor:AppColors.mainColorBlack,
                                  fontSize:14 ,
                                  fontWeight: FontWeight.w500,
                                ),
                                const CustomText(
                                  text: "شاملة الضريبة",
                                  textColor:AppColors.darkGrey,
                                  fontSize:10 ,
                                  fontWeight: FontWeight.w500,
                                ),
                                RangeSlider(
                                  values: c.values2,
                                  activeColor:AppColors.mainColor,
                                  // inactiveColor: const Color(0xff06B3C4),
                                  min: 0,
                                  max: 100,
                                  divisions: 10,
                                  labels: RangeLabels(
                                    "${c.values2.start.round().toString()} \$",
                                    "${c.values2.end.round().toString()} \$",
                                  ),
                                  onChanged: (values){
                                    // c.values2 = values;
                                    c.changeValues2(values);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          // height:258 ,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color:AppColors.mainColorWhite,
                          ),
                          child:Padding(
                            padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const CustomText(
                                      text: "عدد النجوم",
                                      textColor:AppColors.mainColorBlack,
                                      fontSize:14 ,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const   Spacer(),
                                    SvgPicture.asset("assets/images/Vector (1).svg"),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics:const NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return
                                        CheckboxListTile(
                                          activeColor:  AppColors.mainColor,
                                          // checkColor: const Color(0xff06B3C4),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          title:index == 5 ?const CustomText(text:"لا يوجد تقييم") : Row(
                                              children: List<Widget>.generate(
                                                  5 - index, (index) => const Icon(
                                                Icons.star,
                                                color: AppColors.mainColorYellow,))),
                                          value: index == c.index2,
                                          onChanged: (bool? value) {
                                            c.changeIsChecked(value);
                                            c.changeIndex2(index);
                                            print(value);
                                            print((index+-5).abs());

                                          });
                                      // CheckboxListTile(
                                      //     activeColor:  AppColors.mainColor,
                                      //     // checkColor: const Color(0xff06B3C4),
                                      //     controlAffinity: ListTileControlAffinity.leading,
                                      //     title:index == 0 ?const CustomText(text:"لا يوجد تقييم") : Row(
                                      //         children: List<Widget>.generate(
                                      //             0 + index, (index) => const Icon(
                                      //           Icons.star,
                                      //           color: AppColors.mainColorYellow,))),
                                      //     value: index == c.index2,
                                      //     onChanged: (bool? value) {
                                      //       c.changeIsChecked(value);
                                      //       c.changeIndex2(index);
                                      //       print(value);
                                      //       // print(index+-5);
                                      //       print(index);
                                      //     });
                                    }),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          height:105 ,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color:AppColors.mainColorWhite,
                          ),
                          child:Padding(
                            padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children:  [
                                    const CustomText(text: "المسافة من وسط المدينة",
                                      textColor: AppColors.mainColorBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const   Spacer(),
                                    SvgPicture.asset("assets/images/Vector (1).svg"),
                                  ],
                                ),
                                RangeSlider(
                                  values: c.values3,
                                  activeColor: AppColors.mainColor,
                                  // inactiveColor: const Color(0xff06B3C4),
                                  min: 0,
                                  max: 100,
                                  divisions: 10,
                                  labels: RangeLabels(
                                    "${c.values3.start.round().toString()} Km",
                                    "${c.values3.end.round().toString()} Km",
                                  ),
                                  onChanged: (values){
                                    c.changeValues3(values);
                                  }
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        // سلسة الفنادق
                        Container(
                          height:153 ,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color:AppColors.mainColorWhite,
                          ),
                          child:Padding(
                            padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const CustomText(
                                      text: "سلسلة الفنادق",
                                      textColor:AppColors.mainColorBlack,
                                      fontSize:14 ,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const   Spacer(),
                                    SvgPicture.asset("assets/images/Vector (1).svg"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeV1V2V3(
                                          true , false ,false
                                        );


                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.hotelChainV1 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 17,),
                                    const    Text("فندق السيتى ستار"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeV1V2V3(
                                            false , true ,false
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.hotelChainV2 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 17,),
                                    const  Text("فندق القاهرة"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeV1V2V3(
                                            false , false ,true
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.hotelChainV3 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 17,),
                                    const    Text("فندق الاهلى"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        // مميزات الفندق
                        Container(
                          height:153 ,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color:AppColors.mainColorWhite,
                          ),
                          child:Padding(
                            padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                   const  CustomText(text: "مميزات الفندق",
                                      textColor: AppColors.mainColorBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const   Spacer(),
                                    SvgPicture.asset("assets/images/Vector (1).svg"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeHotelFeaturesV1V2V3(
                                          true ,false ,false
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.hotelFeaturesV1 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 18,),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/images/Vector (3).svg"),
                                        const SizedBox(width: 8,),
                                        const  Text("اسم الميزة"),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeHotelFeaturesV1V2V3(
                                            false ,true ,false
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.hotelFeaturesV2 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 18,),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/images/Vector (3).svg"),
                                        const SizedBox(width: 8,),
                                        const  Text("اسم الميزة"),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeHotelFeaturesV1V2V3(
                                            false ,false ,true
                                        );

                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.hotelFeaturesV3 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 18,),
                                    Row(
                                      children:const [
                                        Icon(Icons.wifi),
                                        SizedBox(width: 8,),
                                        Text("اسم الميزة"),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        // مميزات الغرفة
                        Container(
                          height:153 ,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color:AppColors.mainColorWhite,
                          ),
                          child:Padding(
                            padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const  CustomText(text: "مميزات الغرفة",
                                        textColor:AppColors.mainColorBlack,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                     ),
                                    const   Spacer(),
                                    SvgPicture.asset("assets/images/Vector (1).svg"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeRoomFeaturesV1V2V3(
                                          true ,false,false
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.roomFeaturesV1 == true ?const  Center(
                                            child:  Icon(Icons.check,color:AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 18,),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/images/Vector (3).svg"),
                                        const SizedBox(width: 8,),
                                        const  Text("اسم الميزة"),

                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeRoomFeaturesV1V2V3(
                                            false ,true,false
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.roomFeaturesV2 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 18,),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/images/Vector (3).svg"),
                                        const SizedBox(width: 8,),
                                        const  Text("اسم الميزة"),

                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        c.changeRoomFeaturesV1V2V3(
                                            false ,false,true
                                        );
                                      },
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child:c.roomFeaturesV3 == true ?const  Center(
                                            child:  Icon(Icons.check,color: AppColors.mainColor,size: 20,),
                                          ) :const  Text("")),
                                    ),
                                    const SizedBox(width: 18,),
                                    Row(
                                      children:const [
                                        Icon(Icons.wifi),
                                        SizedBox(width: 8,),
                                        Text("اسم الميزة"),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        CustomButton(
                          height:50 ,
                          width:double.infinity ,
                          onPressed: (){
                            // Get.to(()=>HotelsSearchResultScreen());
                          },
                          btnColor: AppColors.mainColor,
                          btnText:const CustomText(
                            text: "البحث",
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              textColor:AppColors.mainColorWhite,
                            ),
                        ),

                      ],
                    ),
                  ),
                );
              },

            ),
          ),
        ),
    );
  }
}
