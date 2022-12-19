import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/colors.dart';
import '../../../widgets/custom_text.dart';
class BuildReserveCustomCard extends StatelessWidget {
  const BuildReserveCustomCard({Key? key, required this.height, required this.image, required this.titleText, required this.location, required this.area, required this.price, required this.rate, required this.dateTime}) : super(key: key);
final double height;
final String image;
final String titleText;
final String location;
final double area;
  final double price;
  final double rate;
final String dateTime;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child:  Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
            height: height,
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
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(image,
                      height:double.infinity,
                      width: 100,
                      fit: BoxFit.cover,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                         CustomText(
                        text: titleText,
                        textColor: AppColors.secondColor,
                        fontSize:14 ,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/img_12.png",
                            height: 14,
                            width: 12,
                          ),
                          const SizedBox(width: 8,),
                          CustomText(
                            text: location,
                            textColor: AppColors.secondColor,
                            fontSize:14 ,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/Vector (4).svg"),
                              const SizedBox(width: 5,),
                              CustomText(
                                text: "$area",
                                textColor: AppColors.secondColor,
                                fontSize:14 ,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Row(
                            children:  [
                              CustomText(
                                text: "$rate",
                                textColor: AppColors.mainColorBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                              const  SizedBox(width: 6,),
                              const  Icon(Icons.star,color: AppColors.mainColorYellow,)
                            ],
                          ),
                          const SizedBox(width: 50,),
                          CustomText(
                            text: "pm $dateTime",
                            textColor: AppColors.secondColor,
                            fontSize:14 ,
                            fontWeight: FontWeight.w500,
                          ),
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight:Radius.circular(10) ,
                  topLeft:    Radius.circular(10) ,
                ),
                color: AppColors.mainColor,
              ),
              child:   Center(
                child: CustomText(
                  text: "\$$price",
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

