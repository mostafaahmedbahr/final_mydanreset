import 'package:final_mydanreset/controller/home_controller.dart';
import 'package:final_mydanreset/screens/hotels_details_screen/hotels_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../core/components/colors.dart';
import '../../core/utils/navigator.dart';
 class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  var homeController = Get.put(HomeController());
    List   isDesktop =[

  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Text("فنادق شائعة",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: AppColors.secondColor,
                ),),
              Text("المزيد",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.mainColorGrey,
                ),),
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
                          const Text("المخلة دبى",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.secondColor,
                              fontSize: 14,
                            ),),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/img_12.png",
                                    height: 14,
                                    width: 12,
                                  ),
                                  const SizedBox(width: 8,),
                                  const  Text("الامارات",
                                    style: TextStyle(
                                      color: AppColors.mainColorGrey,
                                      fontSize: 14,
                                    ),),
                                ],
                              ),
                              const Spacer(),
                              const  Text("\$35",
                                style: TextStyle(
                                  fontSize: 14,
                                  color:   AppColors.mainColor,
                                ),),


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
            child: Text("الاعلانات",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color:AppColors.secondColor
              ),),
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
              Text("افضل العروض",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: AppColors.secondColor
                ),),
              Text("المزيد",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.mainColorGrey
                ),),

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
                            const Text("المخلة دبى",
                              style: TextStyle(
                                color:AppColors.secondColor
                              ),),
                            Row(
                              children: [
                                Image.asset("assets/images/img_12.png",
                                  height: 14,
                                  width: 12,
                                ),
                                const SizedBox(width: 8,),
                                const  Text("الامارات",
                                  style: TextStyle(
                                    color: AppColors.mainColorGrey,
                                    fontSize: 14,
                                  ),),


                              ],
                            ),
                            const  Text("\$35",
                              style: TextStyle(
                                fontSize: 14,
                                color:   AppColors.mainColor,
                              ),),

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
