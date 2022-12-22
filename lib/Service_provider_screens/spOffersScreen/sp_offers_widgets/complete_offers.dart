import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_mydanreset/core/components/colors.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class buildCompleteOfferWidget extends StatelessWidget {
  const buildCompleteOfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.secondColorWhite,
        ),
        color: AppColors.mainColorWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             const CustomText(text: "غرفة رقم - A102",
              fontWeight: FontWeight.w800,
              fontSize: 16,
              textColor: AppColors.mainColorBlack,),
              SvgPicture.asset("assets/images/edit.svg"),
              SvgPicture.asset("assets/images/trash-2.svg"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const  Icon(Icons.bed_outlined),
                        const  SizedBox(width: 8,),
                        const  AutoSizeText("غرفة",
                          maxLines: 1,
                          style: TextStyle(
                            color: AppColors.mainColorBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        const  SizedBox(width: 10,),
                        const  Icon(Icons.person_outline_outlined),
                        const  SizedBox(width: 8,),
                        const  AutoSizeText("نزيلان",
                          maxLines: 1,
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        const  SizedBox(width: 8,),
                        SvgPicture.asset("assets/images/Vector (20).svg"),
                        const  SizedBox(width: 8,),
                        const   AutoSizeText("يوم واحد",
                          maxLines: 1,
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                      ],
                    ),
                    const   Spacer(),
                    const  CustomText(text: "80 \$",
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      textColor: AppColors.mainColor,),

                  ],
                ),
               const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Row(
                      children:const [
                          CustomText(text: "رقم العرض : ",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.mainColorBlack,),
                           CustomText(text: "2",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.mainColorBlack,),

                      ],
                    ),
                    const CustomText(
                      text: "05:00 pm ",
                      fontSize: 12,
                      fontWeight:FontWeight.w500 ,
                      textColor: AppColors.mainColorBlack,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
