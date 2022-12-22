import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/colors.dart';
import '../../widgets/custom_text.dart';
class BuildCustomCard extends StatelessWidget {
  const BuildCustomCard({Key? key, required this.color, required this.title, required this.subTitle, required this.img}) : super(key: key);
final Color color;
final String title;
final String subTitle;
final String img;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 96,
            width: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(text: title,
                  textColor: AppColors.mainColorWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(text: subTitle,
                  textColor: AppColors.mainColorWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          Positioned(
            bottom:0 ,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.mainColorWhite,
                border: Border.all(
                  color: color,
                ),
              ),
              child: SvgPicture.asset(img),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildCustomCardOfReservation extends StatelessWidget {
  const BuildCustomCardOfReservation({Key? key, required this.name, required this.date, required this.reservationNumber, required this.hour, required this.color}) : super(key: key);

final String name;
final String date;
final String reservationNumber;
final String hour;
final Color color;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondColorWhite,
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColorWhite,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.mainColorGrey,
              ),
            ),
            child:    Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                         const CustomText(
                            text: "حجز باسم : ",
                            textColor: AppColors.secondColor,
                            fontSize:14 ,
                            fontWeight: FontWeight.w800,
                          ),
                          CustomText(
                            text: name,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                            textColor: AppColors.secondColor,
                            fontSize:14 ,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                      CustomText(
                        text: date,
                        textColor: AppColors.mainColorGrey,
                        fontSize:14 ,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const CustomText(
                                text: "رقم الحجز : ",
                                textColor: AppColors.mainColorBlack,
                                fontSize:14 ,
                                fontWeight: FontWeight.w800,
                              ),
                              CustomText(
                                text: reservationNumber,
                                maxLines: 1,
                                textOverflow: TextOverflow.ellipsis,
                                textColor: AppColors.mainColorBlack,
                                fontSize:14 ,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          const SizedBox(width: 150,),
                          CustomText(
                            text: hour,
                          fontSize: 12,
                            fontWeight:FontWeight.w500 ,
                            textColor: AppColors.mainColorBlack,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 40,
              width: 40,
              decoration:   BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight:Radius.circular(10) ,
                  topLeft:    Radius.circular(10) ,
                ),
                color: color,
              ),
              child:  const  Center(
                child: CustomText(
                  text: "1000",
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                  textColor: AppColors.mainColorWhite,
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

