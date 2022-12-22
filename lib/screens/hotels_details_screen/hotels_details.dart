import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_mydanreset/screens/rooms_details_screen/room_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
  import 'package:page_transition/page_transition.dart';
import 'package:rate/rate.dart';
 import 'package:custom_full_image_screen/custom_full_image_screen.dart';

 import '../../controller/customer_controller/hotels_controller.dart';
import '../../core/components/colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/divider_widget.dart';
import '../guest_screen/guest_screen.dart';
 import 'hotels_details_widgets/custom_container_icon.dart';

class HotelsDetails extends StatelessWidget {
    const HotelsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  const ClipRRect(
                    borderRadius:BorderRadius.only(
                      bottomLeft:  Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child:  ImageAssetsFullscreen(
                      imagePath : "assets/images/img_20.png",
                        imageHeight: 420,
                      imageWidth: double.infinity,
                      imageFit: BoxFit.cover,
                      withHeroAnimation: true,
                      ),
                    ),
                  Align(
                    alignment: Alignment.topRight,
                    child:CustomContainerIcon(
                      radius: 8,
                      height:50 ,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(left: 8, bottom: 5, top: 40, right: 17),
                      opacity: 0.3,
                      onTap: (){
                        Get.back();
                      },
                      child:    const Icon(Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomContainerIcon(
                        radius: 8,
                        height:50 ,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(left: 8, bottom: 5, top: 40, right: 17),
                        opacity: 0.3,
                        onTap: (){
                          Get.back();
                        },
                        child:    const Icon(Icons.share,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      CustomContainerIcon(
                        radius: 8,
                        height:50 ,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(left: 17, bottom: 5, top: 40, right: 3),
                        opacity: 0.3,
                        onTap: (){
                          Get.back();
                        },
                        child:    const Icon(Icons.favorite_border,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                   Positioned(
                       bottom: 14,
                       right: 14,
                       left: 14,
                       child:  Container(
                           height: 100,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(20),
                           ),
                         child:Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                           child:  Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children:  const [
                                   CustomText(
                                      text:  "ريزيدنس ان ماريوت شارع الشيخ زايد",
                                     fontWeight: FontWeight.w800,
                                     fontSize:14,
                                     textColor: AppColors.mainColorBlack,
                                   ),
                                   CustomText(
                                     text: "\$80",
                                     textColor: AppColors.secondColor,
                                     fontWeight: FontWeight.w800,
                                     fontSize: 20,
                                   ),
                                 ],
                               ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children:const [
                                      Icon(Icons.location_on_outlined,color: Color(0xffFF4471),),
                                      CustomText(
                                          text: "طريق الشيخ زايد - المركز التجاري"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                    const CustomText(
                                      text: "4.9",
                                         textColor: AppColors.mainColorBlack,
                                         fontSize: 15,
                                         fontWeight: FontWeight.w800,
                                       ),
                                      Rate(
                                        iconSize: 20,
                                        color: const Color(0xffFFC700),
                                        allowHalf: true,
                                        allowClear: true,
                                        initialValue: 3.5,
                                        readOnly: false,
                                        onChange: (  value) => print(value),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                             ],
                           ),
                         ),
                       ),
                   ),
                ],
              ),
              const SizedBox(height: 24,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  GetBuilder<HotelsController>(
                init: HotelsController(),
                builder: (c){
                  return Column(
                    children: [
                      Container(
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
                      const SizedBox(height: 26,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              c.changeIndexForDetails(c.currentIndexForDetails=1);
                            },
                            child:  CustomText(text: "اختر الغرفة",
                                textColor:c.currentIndexForDetails==1 ?AppColors.mainColor :AppColors.grey,
                                fontWeight: FontWeight.w800,
                                fontSize: 17,
                             ),
                          ),
                          const  SizedBox(width: 24,),
                          InkWell(
                            onTap: (){
                              c.changeIndex(c.currentIndexForDetails=2);
                            },
                            child:   CustomText(text: "تفاصيل الفندق",
                                textColor:c.currentIndexForDetails ==2 ? AppColors.mainColor :AppColors.grey,
                                fontWeight: FontWeight.w800,
                                fontSize: 17,
                           ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      c.currentIndexForDetails == 1 ?   Column(
                        children: [
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context,index)
                            {
                              return InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context, PageTransition(
                                      duration: const Duration(milliseconds: 400),
                                      reverseDuration: const Duration(milliseconds: 400),
                                      type: PageTransitionType.rightToLeft,
                                      child: const RoomDetails(),
                                      inheritTheme: true,
                                      ctx: context));
                                },
                                child: Container(
                                  height:350,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset("assets/images/img_21.png",
                                          height: 130,
                                          width : double.infinity,
                                          fit: BoxFit.cover,),
                                      ),
                                      Padding(padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 12),
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const    CustomText(text: "اسم الغرفة",
                                                textColor: Color(0xff1C3677),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children:  [
                                                    SvgPicture.asset("assets/images/Vector (3).svg"),
                                                    const SizedBox(width: 12,),
                                                    const CustomText(text: "غير قابل للاسترداد",
                                                        textColor: Color(0xffFF4471),
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                      ) ,
                                                  ],
                                                ),
                                                Row(
                                                  children: const [
                                                    Icon(Icons.check_circle_outline),
                                                    SizedBox(width: 12,),
                                                    CustomText(text: "شاملة اقامة وافطار",
                                                        textColor: Color(0xff1E1E1E),
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: const [
                                                    Icon(Icons.person_outline_outlined),
                                                    SizedBox(width: 12,),
                                                    CustomText(text:"أقصى عدد النزلاء 2",
                                                        textColor: Color(0xff1E1E1E),
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                      ),
                                                  ],
                                                ),
                                                Row(
                                                  children: const [
                                                    Icon(Icons.check_circle_outline),
                                                    SizedBox(width: 12,),
                                                    CustomText(text: "35 م",
                                                        textColor: Color(0xff1E1E1E),
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              children: const [
                                                Icon(Icons.list_alt),
                                                SizedBox(width: 12,),
                                                CustomText(text: "تفاصيل الغرفة",
                                                    textColor: Color(0xff1E1E1E),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                              ),
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            const  Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Divider(
                                              color: Colors.grey,
                                              thickness: 2,
                                            ),),
                                            Padding(padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                              child:  Row(
                                                children: [
                                                  const  CustomText(text: "4 ليالي - 230 \$",
                                                      textColor: Color(0xff1E1E1E),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  const   Spacer(),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 24,
                                                        width: 24,
                                                        decoration: BoxDecoration(
                                                            color:const Color(0xff06B3C4),
                                                            borderRadius: BorderRadius.circular(10),
                                                            border: Border.all(
                                                              color:const Color(0xff06B3C4),
                                                            )
                                                        ),
                                                        child:const Center(child: Icon(Icons.add,
                                                          size: 20,
                                                          color: Color(0xffFFFFFF),)),
                                                      ),
                                                      const SizedBox(width: 13,),
                                                      const CustomText(text: "2",
                                                        fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                       ),
                                                      const SizedBox(width: 13,),
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

                                                    ],
                                                  ),
                                                ],
                                              ),),
                                          ],
                                        ),)
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context,index){
                              return const SizedBox(height: 10,);
                            },
                            itemCount: 2,
                          ),
                          const SizedBox(height: 24,),
                          const DividerWidgetHorizontal(
                            color: AppColors.mainColorGrey,
                            thickness: 1,
                          ),
                          const SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                  CustomText(
                                    text: " 460 \$ ",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  CustomText(
                                    text: "2 غرفة",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  )

                                ],
                              ),
                               CustomButton(
                                  height: 50,
                                  width: 170,
                                onPressed:  (){
                                  Navigator.push(
                                      context, PageTransition(
                                      duration: const Duration(milliseconds: 400),
                                      reverseDuration: const Duration(milliseconds: 400),
                                      type: PageTransitionType.leftToRight,
                                      child: const GuestScreen(),
                                      inheritTheme: true,
                                      ctx: context),
                                  );
                                },
                                  btnColor: AppColors.mainColor,
                                  btnText: const CustomText(
                                    text: "حجز الان",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),

                              ),
                            ],
                          ),
                        ],
                      ) :
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 350,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:   Image.asset("assets/images/img_23.png",
                                    height: 130,
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (12).svg"),
                                          const  SizedBox(width: 14,),
                                          const CustomText(text: "طريق الشيخ زايد - المركز التجاري",
                                              fontWeight:FontWeight.w500 ,
                                              textColor: Color(0xff1C3677),
                                              fontSize: 16,
                                          ),

                                        ],
                                      ),
                                      const  SizedBox(height: 14,),
                                      const CustomText(text:
                                        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                                            "، لقد تم توليد هذا النص من مولد النص العربى،"
                                            " حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص "
                                            "الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق."
                                            "إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد"
                                            " النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو"
                                            " مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد "
                                            "لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل"
                                            " فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.",

                                          textColor: Color(0xff1E1E1E),
                                          fontSize:14 ,
                                          fontWeight:FontWeight.w500 ,
                                        maxLines: 6,
                                        textOverflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 24,),
                          const CustomText(text: "محتويات الفندق",
                              textColor:  Color(0xff1E1E1E),
                              fontSize:16 ,
                              fontWeight:FontWeight.w800 ,
                         ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom:8,right: 20,left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (13).svg",height: 25,),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "اسم الميزة",
                                              textColor: Color(0xff525252),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                         ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (14).svg",height: 25,),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "اسم الميزة",
                                              textColor: Color(0xff525252),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (15).svg",height: 25),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "اسم الميزة",
                                              textColor: Color(0xff525252),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (16).svg",height: 25),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "اسم الميزة",
                                              textColor: Color(0xff525252),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                        ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (17).svg",height: 25),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "اسم الميزة",
                                              textColor: Color(0xff525252),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                         ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/Vector (18).svg",height: 25),
                                          const SizedBox(width: 8,),
                                          const  CustomText(text: "اسم الميزة",
                                              textColor: Color(0xff525252),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
            ),),
            ],
          ),
        ),
      ),
    ));
  }
}
