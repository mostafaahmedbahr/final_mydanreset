import 'package:final_mydanreset/widgets/custom_button.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../../../TestFullScreen.dart';
import '../../../../core/components/colors.dart';

import '../../../../widgets/custom_app_bar.dart';
 import '../groupReservationScreen/group_reservation_screen.dart';



class TGOfferDetailsScreen extends StatefulWidget {
  const TGOfferDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TGOfferDetailsScreen> createState() => _TGOfferDetailsScreenState();
}

class _TGOfferDetailsScreenState extends State<TGOfferDetailsScreen> {
  List imagesSlider = [
    "assets/images/img_19.png",
    "assets/images/img_19.png",
  ];
  var current = 0;
  var carouselController = CarouselController() ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor:const Color(0xffFFFFFF) ,
        appBar: CustomAppBar(
          appBarToolbarHeight: 70,
          automaticallyLeading: true,
          appBarBackgroundColor: AppColors.mainColorWhite,
          appElevation: 0,
          leadingWidget:   IconButton(
            onPressed: (){
              Get.back();
            },
            icon: SvgPicture.asset("assets/images/Vector.svg"),) ,
          titleContent: const CustomText(
            text: "تفاصيل العرض",
            textColor: AppColors.mainColorBlack,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  children: [
                    ListView(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: 332,
                          width: double.infinity,
                          child:   CarouselSlider(
                            items: imagesSlider
                                .map((item) {
                              return Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Get.to(()=>TestFullScreen());
                                        },
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child:  Image.asset(
                                            "$item",
                                            height: 332,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        )),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 14),
                                      alignment: Alignment.bottomCenter,
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          color: const Color(0xffD2C0B2)),
                                      child: CustomText(
                                        text: '${current + 1}/${imagesSlider.length}',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        textColor: Colors.white,
                                      ),
                                    ),

                                  ]);
                            }).toList(),
                            carouselController: carouselController,
                            options: CarouselOptions(
                                autoPlay: true,
                                enlargeCenterPage: true,
                                // height: MediaQuery.of(context).size.height * 0.4,
                                aspectRatio: 1,
                                viewportFraction: 1,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlayInterval: const Duration(seconds: 4),
                                autoPlayAnimationDuration:
                                const Duration(seconds: 4),
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  changeIndicator(index);
                                }),
                          ),
                        ),
                        const SizedBox(height: 17,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              text: "عنوان العرض",
                              fontWeight: FontWeight.w800,
                              textColor: AppColors.mainColorBlack,
                              fontSize: 17,
                            ),
                            Row(
                              children:const [
                                CustomText(
                                  text: "تكلفة الفرد /",
                                  fontWeight: FontWeight.w800,
                                  textColor: AppColors.mainColorBlack,
                                  fontSize: 12,
                                ),
                                CustomText(
                                  text: " \$ 250",
                                  fontWeight: FontWeight.w800,
                                  textColor: AppColors.mainColorRed,
                                  fontSize: 17,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const CustomText(text: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.",
                          textColor: AppColors.mainColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          maxLines: 6,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 14,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children:const [
                                Icon(Icons.bed_outlined),
                                SizedBox(width: 12,),
                                CustomText(text: "غرفتان",
                                  textColor: Color(0xff1E1E1E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/Vector (4).svg"),
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
                                CustomText(text: "شاملة اقامة وافطار",
                                  textColor: Color(0xff1E1E1E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/clock.svg"),
                                SizedBox(width: 12,),
                                CustomText(text: "مدة الرحلة / 10 ايام",
                                  textColor: Color(0xff1E1E1E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Row(
                              children:  [
                                SvgPicture.asset("assets/images/Frame2.svg"),
                                SizedBox(width: 12,),
                                CustomText(text: "عيمجلا / رامعالا",
                                  textColor: Color(0xff1E1E1E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                        const SizedBox(height: 14,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(
                                 color: AppColors.mainColor,
                               ),
                             ),
                             child: CustomButton(
                               height: 50,
                               width: 135,
                               btnColor: AppColors.mainColorWhite,
                               btnText: const CustomText(
                                 text: "الغاء",
                                 fontWeight: FontWeight.w800,
                                 fontSize: 16,
                                 textColor: AppColors.mainColor,
                               ),
                               onPressed: (){

                               },
                             ),
                           ),
                            CustomButton(
                              height: 50,
                              width: 135,
                              btnColor: AppColors.mainColor,
                              btnText: const CustomText(
                                text: "قبول",
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                textColor: AppColors.mainColorWhite,
                              ),
                              onPressed: (){

                              },
                            ),
                          ],
                        ),

                      ],
                    ),


                  ]  ),
            )
        ),
      ),
    ),
    );

  }


  void changeIndicator(int value) {
    setState(() {
      current = value;
    });
  }
}
