import 'dart:ui';

 import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';

class ClassificationScreen extends StatefulWidget {
  const ClassificationScreen({Key? key}) : super(key: key);

  @override
  State<ClassificationScreen> createState() => _ClassificationScreenState();
}

class _ClassificationScreenState extends State<ClassificationScreen> {
  RangeValues values2 = const RangeValues(0, 100);
  RangeValues values3 = const RangeValues(0, 100);
  bool isChecked = false;
  int index2 = 0;
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor:const Color(0xffFFFFFF) ,
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
              titleContent: const Text("التنبيهات",
                style: TextStyle(
                  color: AppColors.mainColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),),
              actionsWidgets:const [
                   Padding(
                     padding: EdgeInsets.all(20),
                     child: Text("اعادة",
                      style: TextStyle(
                        color: Color(0xff1C3677),
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),),
                   ),
                ],
            ),

            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        hintText: "اسم الفندق",
                        hintStyle:const TextStyle(
                          color: Color(0xffBABABA),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon:const Icon(IconlyLight.search,
                        color: Color(0xff1E1E1E),),
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
                        color:const Color(0xffFFFFFF),
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const   Text("مدى السعر",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),
                            const  Text("شاملة الضريبة",
                              style: TextStyle(
                                color: Color(0xff525252),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),),

                        RangeSlider(
                            values: values2,
                        activeColor:const Color(0xff06B3C4),
                        // inactiveColor: const Color(0xff06B3C4),
                        min: 0,
                        max: 100,
                          divisions: 10,
                          labels: RangeLabels(
                            "${values2.start.round().toString()} \$",
                            "${values2.end.round().toString()} \$",
                          ),
                          onChanged: (values)=>setState(() {
                           values2 = values;
                          }),
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
                        color:const Color(0xffFFFFFF),
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                  const  Text("عدد النجوم",
                                  style: TextStyle(
                                    color: Color(0xff1E1E1E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),),
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
                                  return CheckboxListTile(
                                    activeColor:  const Color(0xff06B3C4),
                                      // checkColor: const Color(0xff06B3C4),
                                      controlAffinity: ListTileControlAffinity.leading,
                                      title:index == 5 ?const Text("لا يوجد تقييم") : Row(
                                          children: List<Widget>.generate(
                                              5 - index, (index) => const Icon(
                                            Icons.star,
                                            color: Color(0xffFFC700),))),
                                      value: index == index2,
                                      onChanged: (bool? value) {
                                       setState(() {
                                         isChecked=value!;
                                         index2 = index;
                                       });
                                      });
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
                        color:const Color(0xffFFFFFF),
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const  Text("المسافة من وسط المدينة",
                                  style: TextStyle(
                                    color: Color(0xff1E1E1E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                const   Spacer(),
                                SvgPicture.asset("assets/images/Vector (1).svg"),
                              ],
                            ),
                            RangeSlider(
                              values: values3,
                              activeColor:const Color(0xff06B3C4),
                              // inactiveColor: const Color(0xff06B3C4),
                              min: 0,
                              max: 100,
                              divisions: 10,
                              labels: RangeLabels(
                                "${values3.start.round().toString()} Km",
                                "${values3.end.round().toString()} Km",
                              ),
                              onChanged: (values)=>setState(() {
                                values3 = values;
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      height:153 ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color:const Color(0xffFFFFFF),
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 const  Text("سلسلة الفنادق",
                                   style: TextStyle(
                                     color: Color(0xff1E1E1E),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w500,
                                   ),),
                                 const   Spacer(),
                                 SvgPicture.asset("assets/images/Vector (1).svg"),
                               ],
                             ),
                             Row(
                               children: [
                                 GestureDetector(
                                   onTap:(){
                                     setState(() {
                                       v1 = true;
                                       v3 = false;
                                       v2 = false;
                                     });
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
                                   child:v1 == true ?const  Center(
                                     child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                                     setState(() {
                                       v2 = true;
                                       v1 = false;
                                       v3 = false;
                                     });
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
                                       child:v2 == true ?const  Center(
                                         child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                                     setState(() {
                                       v3 = true;
                                       v1 = false;
                                       v2 = false;
                                     });
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
                                       child:v3 == true ?const  Center(
                                         child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                    Container(
                      height:153 ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color:const Color(0xffFFFFFF),
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const  Text("مميزات الفندق",
                                  style: TextStyle(
                                    color: Color(0xff1E1E1E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                const   Spacer(),
                                SvgPicture.asset("assets/images/Vector (1).svg"),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      v1 = true;
                                      v3 = false;
                                      v2 = false;
                                    });
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
                                      child:v1 == true ?const  Center(
                                        child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                                    setState(() {
                                      v2 = true;
                                      v1 = false;
                                      v3 = false;
                                    });
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
                                      child:v2 == true ?const  Center(
                                        child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                                    setState(() {
                                      v3 = true;
                                      v1 = false;
                                      v2 = false;
                                    });
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
                                      child:v3 == true ?const  Center(
                                        child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                    Container(
                      height:153 ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color:const Color(0xffFFFFFF),
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const  Text("مميزات الغرفة",
                                  style: TextStyle(
                                    color: Color(0xff1E1E1E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                const   Spacer(),
                                SvgPicture.asset("assets/images/Vector (1).svg"),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      v1 = true;
                                      v3 = false;
                                      v2 = false;
                                    });
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
                                      child:v1 == true ?const  Center(
                                        child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                                    setState(() {
                                      v2 = true;
                                      v1 = false;
                                      v3 = false;
                                    });
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
                                      child:v2 == true ?const  Center(
                                        child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                                    setState(() {
                                      v3 = true;
                                      v1 = false;
                                      v2 = false;
                                    });
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
                                      child:v3 == true ?const  Center(
                                        child:  Icon(Icons.check,color: Color(0xff06B3C4),size: 20,),
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
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child:  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff06B3C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),

                        ),
                        onPressed: (){
                          // Get.to(()=>HotelsSearchResultScreen());
                        },
                        child:const Text("البحث",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color(0xffFFFFFF),
                          ),),
                      ),
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
