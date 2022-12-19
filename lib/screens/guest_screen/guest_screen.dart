import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_mydanreset/widgets/custom_button.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:get/get.dart';
import '../../core/components/colors.dart';
import '../../widgets/divider_widget.dart';
class GuestScreen extends StatelessWidget {
  const GuestScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor:const Color(0xffF6F6F6) ,
        appBar: AppBar(
          backgroundColor:const Color(0xffF6F6F6) ,
          elevation: 0,
          title: const Text("تفاصيل النزلاء",
            style: TextStyle(
              color: Color(0xff1E1E1E),
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: SvgPicture.asset("assets/images/Vector.svg"),
          ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mainColorWhite,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color:AppColors.mainColorWhite,
                    ),
                  ),
                  child: Padding(
                    padding:const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
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
                              Padding(padding:const EdgeInsets.all(10),
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
                                        color: AppColors.secondColor,
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
                                    const  Text("4 ليالي - 4 نزلاء - 2 غرفة",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color:  AppColors.mainColor,
                                      ),),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 14,),
                        Container(
                          padding: const EdgeInsets.only(right: 14,left: 14),
                          height: 48,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.mainColorWhite,
                            border: Border.all(
                              color:AppColors.secondColorWhite,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children:const [
                                  Icon(Icons.calendar_month_outlined),
                                  SizedBox(width: 8,),
                                  AutoSizeText("2222 نوفمبر 2022  -  25 نوفمبر 2022",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: AppColors.mainColorBlack,
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
                        const Padding(
                         padding:  EdgeInsets.symmetric(vertical: 20),
                         child:   DividerWidgetHorizontal(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                       ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/Vector (7).svg"),
                            const SizedBox(width: 18,),
                             const Text("سياسة الالغاء - ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColors.mainColorBlack,
                            ),),
                            const SizedBox(width: 10,),
                            const Text(" غير قابلة للاسترد",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.mainColorRed,
                              ),),

                          ],
                        ),
                      const  SizedBox(height: 29,),
                  const DottedLine(
                  direction: Axis.horizontal,
                    lineLength: double.infinity,
                    lineThickness: 1.0,
                    dashLength: 10.0,
                    dashColor: Color(0xffD9D9D9),
                  ),
                        const  SizedBox(height: 29,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                            Text("السعر الاجمالي",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 14,
                                color: AppColors.mainColorBlack,
                              ),),
                            Text("670 \$",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: AppColors.mainColorBlack,
                              ),),
                          ],
                        ),
                        const  SizedBox(height: 2,),
                        const Text("شاملة الخدمة والضريبة ماعد",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.mainColorGrey,
                          ),),
                        const Text("لضربية السياحية ان وجدت",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color:AppColors.mainColorGrey,
                          ),),
                      ],
                    ),
                  ),
                ),
               const SizedBox(height: 24,),
               const Text("تفاصيل الاتصال",
                 style: TextStyle(
                   fontSize: 17,
                   fontWeight:FontWeight.w800 ,
                   color: AppColors.mainColorBlack,
                 ),),
                const SizedBox(height: 14,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: AppColors.mainColorWhite,
                    contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    hintText: "الاسم كامل",
                    hintStyle:const TextStyle(
                      color:AppColors.mainColorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
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
                const SizedBox(height: 14,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: AppColors.mainColorWhite,
                    contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    hintText: "البريد الالكتروني",
                    hintStyle:const TextStyle(
                      color:AppColors.mainColorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
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
                const SizedBox(height: 14,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: AppColors.mainColorWhite,
                    contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    hintText: "رقم الهاتف",
                    hintStyle:const TextStyle(
                      color: Color(0xff1E1E1E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    suffixIcon:const  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child:  Text("+970",
                      style: TextStyle(
                        color: Color(0xff1E1E1E),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
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
                const SizedBox(height: 14,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: const Color(0xffFFFFFF),
                    contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    hintText: "تاريخ الميلاد",
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
                const SizedBox(height: 14,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: const Color(0xffFFFFFF),
                    contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    hintText: "الجنسية",
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
                const SizedBox(height: 46,),
                CustomButton(
                  width: double.infinity,
                  height: 50,
                    btnColor: AppColors.mainColor,
                    btnText:const  CustomText(text: "دفع",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,),
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
