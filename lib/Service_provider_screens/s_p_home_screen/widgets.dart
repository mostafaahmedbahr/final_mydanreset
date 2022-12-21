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
