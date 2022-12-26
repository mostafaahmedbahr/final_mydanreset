 import 'package:final_mydanreset/screens/TouristGroups/tourist_groups_main_screen/tourist_groups_main_screen.dart';
import 'package:final_mydanreset/screens/hotels_details_screen/hotels_details.dart';
import 'package:final_mydanreset/screens/hotels_screen/hotels_widgets/main_part_widget.dart';
 import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
 import '../../controller/customer_controller/home_controller.dart';
import '../../core/components/colors.dart';
 import '../notifications_screen/notifications_screen.dart';
 class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  ScrollController scrollController = ScrollController();
  ScrollPhysics _physics = const ClampingScrollPhysics();
  var homeController = Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels <= 56) {
        _physics = const ClampingScrollPhysics();
      } else {
        _physics = const BouncingScrollPhysics();
      }
      setState(() {});
    });
  }
  @override
  void dispose() {
    super.dispose();
    scrollController.dispose(); //always dispose the controller
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll)
        {
          overScroll.disallowIndicator();
          return false;
        },
        child: ListView(
          controller: scrollController,
          physics: _physics,
          children: [
            Container(
              height:310,
              width: double.infinity,
              color: AppColors.mainColorWhite,
              child:  Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft:  Radius.circular(80) ,
                      bottomRight: Radius.circular(80) ,
                    ) ,
                    child: Image.asset("assets/images/Rectangle 43.png",
                      width: double.infinity,
                      height: 225,
                      fit: BoxFit.fill,),
                  ),
                  Container(
                    height: 225,
                    width: double.infinity,
                    decoration:   BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const  Color(0xff06B3C4).withOpacity(0.8),
                            const  Color(0xff1C3677).withOpacity(0.8),
                          ]
                      ),
                      // color: AppColors.mainColor.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        bottomLeft:  Radius.circular(80) ,
                        bottomRight: Radius.circular(80) ,
                      ),
                    ),

                  ),
                  Positioned(
                    top: 20,
                    right: 5,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Row(
                          children:const [
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/img.png",),
                                backgroundColor: Color(0xffFFFFFF),
                                minRadius: 10,
                                maxRadius: 20,
                              ),
                            ) ,
                               SizedBox(width: 10,),
                             CustomText(text: "تسجيل الدخول",
                            fontWeight:FontWeight.w500 ,
                            fontSize: 17,
                            textColor: AppColors.mainColorWhite,),
                          ],
                        ),
                         IconButton(
                           onPressed: () {
                             Navigator.push(
                                 context, PageTransition(
                                 duration: const Duration(milliseconds: 400),
                                 reverseDuration: const Duration(milliseconds: 400),
                                 type: PageTransitionType.leftToRight,
                                 child: const NotificationsScreen(),
                                 inheritTheme: true,
                                 ctx: context));
                           },
                           icon: Image.asset("assets/images/img_11.png",
                             height: 20,
                           color: AppColors.mainColorWhite,),
                         ),
                       ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    left: 20,
                    child:   Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                            MainPartWidget(
                              text: "فنادق            ",
                              image: "assets/images/img_8.png",
                            ),
                            MainPartWidget(
                              text: "استقبال وتوديع",
                              image: "assets/images/img_9.png",
                            ),

                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MainPartWidget(
                              text: "شقق مفروشه",
                              image: "assets/images/img_7.png",
                            ),
                            InkWell(
                              onTap: (){
                                Get.to(()=>TouristGroupsMainScreen());
                              },
                              child: MainPartWidget(
                                text: "قروبات سياحية",
                                image: "assets/images/Vector.png",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      CustomText(text: "فنادق شائعة",
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          textColor: AppColors.secondColor,
                        ),
                      CustomText(text: "المزيد",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          textColor: AppColors.mainColorGrey,
                        ),
                    ],
                  ),
                  const SizedBox(
                      height:  12
                  ),
                  SizedBox(
                    height: 210,
                    child:  ListView.separated(
                      physics:const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)
                      {
                        return InkWell(
                          onTap: (){
                            Navigator.push(
                                context, PageTransition(
                                duration: const Duration(milliseconds: 400),
                                reverseDuration: const Duration(milliseconds: 400),
                                type: PageTransitionType.leftToRight,
                                child:   const HotelsDetails(),
                                inheritTheme: true,
                                ctx: context));
                          },
                          child: Container(
                            height: 210,
                            width: 154,
                            decoration: BoxDecoration(
                              color:AppColors.mainColorWhite,
                              border: Border.all(
                                color:AppColors.secondColorWhite,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:const EdgeInsets.symmetric(vertical: 10),
                                    child:  Image.asset("assets/images/img_2.png",)
                                    ,),
                                  const CustomText(text: "المخلة دبى",
                                    maxLines: 1,
                                    textOverflow: TextOverflow.ellipsis,
                                      textColor: AppColors.secondColor,
                                      fontSize: 14,
                                    ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset("assets/images/img_12.png",
                                            height: 14,
                                            width: 12,
                                          ),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "الامارات",
                                              textColor: AppColors.mainColorGrey,
                                              fontSize: 14,
                                            ),
                                        ],
                                      ),
                                      const Spacer(),
                                      const  CustomText(text: "\$35",
                                          fontSize: 14,
                                          textColor:   AppColors.mainColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(width: 10,);
                      },
                      itemCount: 10,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const  Align(
                    alignment:  Alignment.bottomRight,
                    child: CustomText(text: "الاعلانات",
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          textColor:AppColors.secondColor
                    ),
                  ),
                  const SizedBox(height: 12,),
                  SizedBox(
                    height: 130,
                    child:  ListView.separated(
                      physics:const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)
                      {
                        return Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:AppColors.secondColorWhite
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/img_3.png",fit: BoxFit.cover,),
                          ),
                        );
                      },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(width: 10,);
                      },
                      itemCount: 10,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      CustomText(text:"افضل العروض",
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            textColor: AppColors.secondColor
                       ),
                      CustomText(text: "المزيد",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            textColor: AppColors.mainColorGrey
                       ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  SizedBox(
                    height: 100,
                    child:  ListView.separated(
                      physics:const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)
                      {
                        return Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:AppColors.mainColorWhite,
                            border: Border.all(
                              color:AppColors.secondColorWhite,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: const EdgeInsets.all(10),
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("assets/images/img_4.png",fit: BoxFit.cover,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(text: "المخلة دبى",
                                          textColor:AppColors.secondColor
                                   ),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/img_12.png",
                                          height: 14,
                                          width: 12,
                                        ),
                                        const SizedBox(width: 8,),
                                        const  CustomText(text: "الامارات",
                                            textColor: AppColors.mainColorGrey,
                                            fontSize: 14,
                                          ),
                                      ],
                                    ),
                                    const  CustomText(text: "\$35",
                                        fontSize: 14,
                                        textColor:   AppColors.mainColor,
                                     ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(width: 10,);
                      },
                      itemCount: 10,
                    ),
                  ),
                  // const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );


    //   homeController.bottomIndex==1 ?
    //   const SearchHotelsScreen() :
    //   Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children:const [
    //         Text("فنادق شائعة",
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 17,
    //             color: Color(0xff1C3677),
    //           ),),
    //         Text("المزيد",
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 14,
    //             color: Color(0xff7A7890),
    //           ),),
    //       ],
    //     ),
    //     const SizedBox(height: 12,),
    //     SizedBox(
    //       height: 210,
    //       child:  ListView.separated(
    //         physics:const BouncingScrollPhysics(),
    //         scrollDirection: Axis.horizontal,
    //         itemBuilder: (context,index)
    //         {
    //           return Container(
    //             height: 210,
    //             width: 154,
    //             decoration: BoxDecoration(
    //               color:const Color(0xffFFFFFF),
    //               border: Border.all(
    //                 color:const Color(0xffDFDFDF),
    //               ),
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 10),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Padding(padding:const EdgeInsets.symmetric(vertical: 10),
    //                     child:  Image.asset("assets/images/img_2.png",)
    //                     ,),
    //                   const Text("المخلة دبى",
    //                     maxLines: 1,
    //                     overflow: TextOverflow.ellipsis,
    //                     style: TextStyle(
    //                       color: Color(0xff1C3677),
    //                       fontSize: 14,
    //                     ),),
    //                   Row(
    //                     children: [
    //                       Row(
    //                         children: [
    //                           Image.asset("assets/images/img_12.png",
    //                             height: 14,
    //                             width: 12,
    //                           ),
    //                           const SizedBox(width: 8,),
    //                           const  Text("الامارات",
    //                             style: TextStyle(
    //                               color: Color(0xff7A7890),
    //                               fontSize: 14,
    //                             ),),
    //                         ],
    //                       ),
    //                       const Spacer(),
    //                       const  Text("\$35",
    //                         style: TextStyle(
    //                           fontSize: 14,
    //                           color:   Color(0xff06B3C4),
    //                         ),),
    //
    //
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           );
    //         },
    //         separatorBuilder: (context,index)
    //         {
    //           return const SizedBox(width: 10,);
    //         },
    //         itemCount: 10,
    //       ),
    //     ),
    //     const SizedBox(height: 20,),
    //     const  Align(
    //       alignment:  Alignment.bottomRight,
    //       child: Text("الاعلانات",
    //         style: TextStyle(
    //           fontWeight: FontWeight.bold,
    //           fontSize: 17,
    //           color: Color(0xff1C3677),
    //         ),),
    //     ),
    //     const SizedBox(height: 12,),
    //     SizedBox(
    //       height: 130,
    //       child:  ListView.separated(
    //         physics:const BouncingScrollPhysics(),
    //         scrollDirection: Axis.horizontal,
    //         itemBuilder: (context,index)
    //         {
    //           return Container(
    //             height: 70,
    //             width: 270,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Colors.red,
    //             ),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(10),
    //               child: Image.asset("assets/images/img_3.png",fit: BoxFit.cover,),
    //             ),
    //           );
    //         },
    //         separatorBuilder: (context,index)
    //         {
    //           return const SizedBox(width: 10,);
    //         },
    //         itemCount: 10,
    //       ),
    //     ),
    //     const SizedBox(height: 20,),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children:const [
    //         Text("افضل العروض",
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 17,
    //             color: Color(0xff1C3677),
    //           ),),
    //         Text("المزيد",
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 14,
    //             color: Color(0xff7A7890),
    //           ),),
    //
    //       ],
    //     ),
    //     const SizedBox(height: 12,),
    //     SizedBox(
    //       height: 100,
    //       child:  ListView.separated(
    //         physics:const BouncingScrollPhysics(),
    //         scrollDirection: Axis.horizontal,
    //         itemBuilder: (context,index)
    //         {
    //           return Container(
    //             height: 70,
    //             width: 250,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color:const Color(0xffFFFFFF),
    //               border: Border.all(
    //                 color:const Color(0xffDFDFDF),
    //               ),
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 Padding(padding: EdgeInsets.all(10),
    //                   child:  ClipRRect(
    //                     borderRadius: BorderRadius.circular(10),
    //                     child: Image.asset("assets/images/img_4.png",fit: BoxFit.cover,),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(10.0),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       const Text("المخلة دبى",
    //                         style: TextStyle(
    //                           color: Color(0xff1C3677),
    //                         ),),
    //                       Row(
    //                         children: [
    //                           Image.asset("assets/images/img_12.png",
    //                             height: 14,
    //                             width: 12,
    //                           ),
    //                           const SizedBox(width: 8,),
    //                           const  Text("الامارات",
    //                             style: TextStyle(
    //                               color: Color(0xff7A7890),
    //                               fontSize: 14,
    //                             ),),
    //
    //
    //                         ],
    //                       ),
    //                       const  Text("\$35",
    //                         style: TextStyle(
    //                           fontSize: 14,
    //                           color:   Color(0xff06B3C4),
    //                         ),),
    //
    //                     ],
    //                   ),
    //                 ),
    //
    //               ],
    //             ),
    //           );
    //         },
    //         separatorBuilder: (context,index)
    //         {
    //           return const SizedBox(width: 10,);
    //         },
    //         itemCount: 10,
    //       ),
    //     ),
    //     // const SizedBox(height: 20,),
    //   ],
    // );
  }
}
