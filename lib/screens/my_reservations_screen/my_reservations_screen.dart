import 'package:final_mydanreset/core/components/colors.dart';
import 'package:final_mydanreset/screens/my_reservations_screen/MyReservations_widgets/build_reserve__custom_card.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../../controller/my_reservation_controller.dart';
import '../../widgets/custom_app_bar.dart';
import '../notifications_screen/notifications_screen.dart';
 class MyReservationsScreen extends StatelessWidget  {
  const MyReservationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: CustomAppBar(
        appBarToolbarHeight: 70,
        automaticallyLeading: true,
        appBarBackgroundColor: AppColors.mainColorWhite,
        appElevation: 0,
        leadingWidget:const Padding(
          padding: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/img.png",),
            backgroundColor: Color(0xffFFFFFF),
            minRadius: 50,
            maxRadius: 75,
          ),
        ) ,
        titleContent: const Text("تسجيل الدخول",
          style: TextStyle(
            color: Color(0xff878787),
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),),
        actionsWidgets: [
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
              height: 20,),
          ),
        ],
      ),
      backgroundColor: AppColors.mainColorWhite,
        body:  Column(
          children: [
            GetBuilder<ReservationController>(
              init: ReservationController(),
              builder: (c){
                return Container(
                  height: 56,
                  width: double.infinity,
                  color: const Color(0xff06B3C4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Expanded(
                            child: InkWell(
                              onTap:(){
                                c.changeIndex(c.pageIndex=1);
                                print(c.pageIndex);
                              },
                              child: Container(
                                height: double.infinity,
                                color :c.pageIndex==1 ? AppColors.hoverMainColor : AppColors.mainColor,
                                child:  const Center(
                                  child:  Text("قادمة",
                                    style: TextStyle(
                                      color:Color(0xffFFFFFF) ,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 17,
                                    ),
                                  ),

                              ),
                          ),
                            ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap:(){
                              c.changeIndex(c.pageIndex=2);
                              print(c.pageIndex);
                            },
                            child: Container(
                              height: double.infinity,
                              color :c.pageIndex==2 ? AppColors.hoverMainColor : AppColors.mainColor,
                              child:  const Center(
                                child:  Text("نشطة",
                                  style: TextStyle(
                                    color:Color(0xffFFFFFF) ,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap:(){
                              c.changeIndex(c.pageIndex=3);
                              print(c.pageIndex);
                            },
                            child: Container(
                              height: double.infinity,
                              color :c.pageIndex==3 ? AppColors.hoverMainColor : AppColors.mainColor,
                              child:  const Center(
                                child:  Text("مكتملة",
                                  style: TextStyle(
                                    color:Color(0xffFFFFFF) ,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                );
              },

            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: const Color(0xffFFFFFF),
                  contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  hintText: "الخدمات - الكل",
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
            ),
            // Expanded(
            //   child: ListView.builder(itemBuilder: (context,index)
            //   {
            //     return const Padding(
            //       padding:   EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            //       child:BuildReserveCustomCard(
            //         height: 120 ,
            //           image: "assets/images/img_2.png",
            //           titleText: "أتلانتس النخلة، دبي",
            //           location: "مصر - القاهرة",
            //           area: 35,
            //           price:80,
            //           rate: 4.9,
            //           dateTime: "05:00",
            //       ),
            //     );
            //   }),),
            Expanded(
              child: ListView.builder(itemBuilder: (context,index)
              {
                return  const BuildReserveCustomCard(
                          height: 120 ,
                            image: "assets/images/img_2.png",
                            titleText: "أتلانتس النخلة، دبي",
                            location: "مصر - القاهرة",
                            area: 35,
                            price:50,
                            rate: 4.9,
                            dateTime: "05:00",
                );
              }),),
          ],
        ),
    );
  }
}
