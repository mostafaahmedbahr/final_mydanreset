import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/components/colors.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';
import '../../../../widgets/divider_widget.dart';

class TouristGroupsBillScreen extends StatelessWidget {
  const TouristGroupsBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color(0xffF6F6F6),
          appBar: CustomAppBar(
            centerTitle: true,
            appBarToolbarHeight: 70,
            automaticallyLeading: true,
            appBarBackgroundColor: const Color(0xffF6F6F6),
            appElevation: 0,
            leadingWidget: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset("assets/images/Vector.svg"),
            ),
            titleContent: const CustomText(
              text: "تفاصيل الفاتورة",
              textColor: AppColors.mainColorBlack,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.mainColorWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.mainColorWhite,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColorWhite,
                              border: Border.all(
                                color: AppColors.secondColorWhite,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/img_4.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CustomText(
                                        text: "المخلة دبى",
                                        textColor: AppColors.secondColor,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/img_12.png",
                                            height: 14,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const CustomText(
                                            text: "الامارات",
                                            textColor: AppColors.mainColorGrey,
                                            fontSize: 14,
                                          ),
                                        ],
                                      ),
                                      const CustomText(
                                        text: "4 ليالي - 4 نزلاء - 2 غرفة",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        textColor: AppColors.mainColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 14, left: 14),
                            height: 48,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColorWhite,
                              border: Border.all(
                                color: AppColors.secondColorWhite,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month_outlined),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    AutoSizeText(
                                      "2222 نوفمبر 2022  -  25 نوفمبر 2022",
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: AppColors.mainColorBlack,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset("assets/images/edit.svg"),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: DividerWidgetHorizontal(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/Vector (7).svg"),
                              const SizedBox(
                                width: 18,
                              ),
                              const CustomText(
                                text: "سياسة الالغاء - ",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                textColor: AppColors.mainColorBlack,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const CustomText(
                                text: " غير قابلة للاسترد",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                textColor: AppColors.mainColorRed,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          const DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 10.0,
                            dashColor: Color(0xffD9D9D9),
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CustomText(
                                text: "السعر الاجمالي",
                                fontWeight: FontWeight.w800,
                                fontSize: 14,
                                textColor: AppColors.mainColorBlack,
                              ),
                              CustomText(
                                text: "670 \$",
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                textColor: AppColors.mainColorBlack,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const CustomText(
                            text: "شاملة الخدمة والضريبة ماعد",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textColor: AppColors.mainColorGrey,
                          ),
                          const CustomText(
                            text: "لضربية السياحية ان وجدت",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textColor: AppColors.mainColorGrey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    height: 50,
                    width: double.infinity,
                    btnColor: AppColors.mainColor,
                    btnText: const CustomText(
                      text: "دفع",
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      textColor: AppColors.mainColorWhite,
                    ),
                    onPressed: (){
                      Get.to(()=>TouristGroupsBillScreen());
                    },
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
