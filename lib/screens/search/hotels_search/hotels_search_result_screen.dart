import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:map_launcher/map_launcher.dart';

import '../../classification_screen/classification_screen.dart';
import '../../map_screen/map_screen.dart';

class HotelsSearchResultScreen extends StatefulWidget {
  const HotelsSearchResultScreen({Key? key}) : super(key: key);

  @override
  State<HotelsSearchResultScreen> createState() => _HotelsSearchResultScreenState();
}

class _HotelsSearchResultScreenState extends State<HotelsSearchResultScreen> {
  var pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor:const Color(0xffFFFFFF) ,
            appBar: AppBar(
              backgroundColor:const Color(0xffFFFFFF) ,
              elevation: 0,
              title:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const   Text("دبى",
                  style: TextStyle(
                      fontSize:16 ,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff1E1E1E),
                  ),),
                 Row(
                   children: const[
                     Text("100",
                       style: TextStyle(
                         fontSize:12 ,
                         color: Color(0xff1E1E1E),
                       ),),
                     Text("نتيجة",
                       style: TextStyle(
                         fontSize:14 ,
                         fontWeight: FontWeight.w500,
                         color: Color(0xff1E1E1E),
                       ),),
                   ],
                 ),
                ],
              ),
              leading:IconButton(
                onPressed: (){
                  Get.back();
                },
                icon: Image.asset("assets/images/img_17.png",
                height: 20,
                width: 10,
                color: const Color(0xff000000),),
              ),
            ),
            body: Column(
                children: [
                  Container(
                    height: 56,
                    width: double.infinity,
                    color: const Color(0xff06B3C4),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         InkWell(
                           onTap: (){
                             setState(() {
                               pageIndex=1;
                             });
                           },
                           child:  Row(
                             children: [
                               SvgPicture.asset("assets/images/Frame.svg",
                                 height: 24,
                                 width: 24,
                               ),
                               const  SizedBox(width: 10,),
                               const Text("ترتيب",
                                 style: TextStyle(
                                   color:Color(0xffFFFFFF) ,
                                   fontWeight: FontWeight.w800,
                                   fontSize: 17,
                                 ),),
                             ],
                           ),
                         ),
                          const Padding(
                            padding:   EdgeInsets.symmetric(vertical: 13),
                            child: VerticalDivider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                pageIndex=2;
                              });
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/images/Vector (2).svg",
                                  height: 24,
                                  width: 24,
                                ),
                                const  SizedBox(width: 10,),
                                const Text("تصنيف",
                                  style: TextStyle(
                                    color:Color(0xffFFFFFF) ,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),),
                              ],
                            ),
                          ),
                          const Padding(
                            padding:   EdgeInsets.symmetric(vertical: 13),
                            child: VerticalDivider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                pageIndex=3;
                              });
                            },
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/images/Vector (1).svg",
                                  height: 24,
                                  width: 24,
                                ),
                                const  SizedBox(width: 10,),
                                const Text("خريطة",
                                  style: TextStyle(
                                    color:Color(0xffFFFFFF) ,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14,),
                 if(pageIndex==1)
                 Expanded(
                   child: ListView(
                     children: [
                       Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
                         child:  Container(
                           padding: const EdgeInsets.only(right: 14,left: 14),
                           height: 48,
                           width: double.infinity,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.white,
                             border: Border.all(
                               color: Colors.grey,
                             ),
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children:const [
                                   Icon(Icons.calendar_month_outlined),
                                   SizedBox(width: 8,),
                                   AutoSizeText("22 نزفمبر - 24 نوفمير",
                                     maxLines: 1,
                                     style: TextStyle(
                                       color: Color(0xff000000),
                                       fontSize: 12,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                   SizedBox(width: 10,),
                                   Icon(Icons.person_outline_outlined),
                                   SizedBox(width: 8,),
                                   AutoSizeText("نزيلان",
                                     maxLines: 1,
                                     style: TextStyle(
                                       color: Color(0xff000000),
                                       fontSize: 12,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                   SizedBox(width: 8,),
                                   Icon(Icons.bed,),
                                   SizedBox(width: 8,),
                                   AutoSizeText("غرفتان",
                                     maxLines: 1,
                                     style: TextStyle(
                                       color: Color(0xff000000),
                                       fontSize: 12,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                 ],
                               ),
                               const   Spacer(),
                               SvgPicture.asset("assets/images/edit.svg"),

                             ],
                           ),
                         ),
                       ),
                       const SizedBox(height: 14,),
                       ListView.separated(
                         shrinkWrap: true,
                         physics:const NeverScrollableScrollPhysics(),
                         itemBuilder: (context,index)
                         {
                           return Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20),
                             child: Container(
                               height:210 ,
                               width: 333,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(
                                   color: Colors.grey,
                                 ),
                                 color:const Color(0xffFFFFFF),
                               ),
                               child: Stack(
                                 children: [
                                   Column(
                                     children: [
                                       ClipRRect(
                                         borderRadius :const BorderRadius.only(
                                           topRight:   Radius.circular(10),
                                           topLeft:   Radius.circular(10),
                                         ),
                                         child: Image.asset("assets/images/img_18.png",
                                           height: 130,
                                           width: double.infinity,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.symmetric(
                                           horizontal: 14,
                                           vertical: 12,
                                         ),
                                         child: Column(

                                           children: [
                                             Row(
                                               children: const [
                                                 Text("شارع الشيخ زايد",
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.w500,
                                                     color:Color(0xff1C3677) ,
                                                     fontSize:14 ,
                                                   ),),
                                                 Spacer(),
                                                 Icon(Icons.favorite_border,
                                                   color: Color(0xff7A7890),
                                                 ),
                                               ],
                                             ),
                                             const SizedBox(height: 4,),
                                             Row(
                                               children: [
                                                 Row(
                                                   children: [
                                                     Image.asset("assets/images/img_12.png",
                                                       height: 14,
                                                       width: 12,
                                                     ),
                                                     const SizedBox(width: 8,),
                                                     const  Text("المركز التجارى",
                                                       style: TextStyle(
                                                         color: Color(0xff7A7890),
                                                         fontSize: 14,
                                                         fontWeight: FontWeight.w500,
                                                       ),),
                                                   ],
                                                 ),
                                                 const Spacer(),
                                                 Row(
                                                   children: const[
                                                     Text("\$35",
                                                       style: TextStyle(
                                                         decoration: TextDecoration. lineThrough,
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.w500,
                                                         color:   Color(0xff7A7890),
                                                       ),),
                                                     SizedBox(width: 4,),
                                                     Text("\$50",
                                                       style: TextStyle(
                                                         fontSize: 16,
                                                         fontWeight: FontWeight.w800,
                                                         color:   Color(0xff1C3677),
                                                       ),),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                   Padding(padding: const EdgeInsets.all(15),
                                     child:  Container(
                                       height: 24,
                                       width:53 ,
                                       decoration: BoxDecoration(
                                         borderRadius:BorderRadius.circular(14) ,
                                         color:Colors.black87.withOpacity(0.5),
                                       ),
                                       child:const Center(
                                         child:  Text("4.5",
                                           style: TextStyle(
                                             color: Color(0xffDADADA),
                                             fontSize: 14,
                                             fontWeight: FontWeight.w800,
                                           ),),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           );
                         },
                         separatorBuilder:(context,index)
                         {
                           return  const SizedBox(height: 10,);
                         },
                         itemCount: 10,
                       )
                     ],
                   ),
                 ),
                  if(pageIndex==2)
                    Expanded(child: ClassificationScreen()),
                  if(pageIndex==3)
                    MapScreen(),
                ],
              ),

          ),
      ),
    );
  }
}
