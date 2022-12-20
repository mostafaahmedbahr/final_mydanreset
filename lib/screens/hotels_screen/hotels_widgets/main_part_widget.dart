import 'package:flutter/material.dart';

import '../../../core/components/colors.dart';
import '../../../widgets/custom_text.dart';
class MainPartWidget extends StatelessWidget {
    const MainPartWidget({Key? key, required this.image, required this.text}) : super(key: key);

  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height:62 ,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColorWhite,
        border: Border.all(
          color: AppColors.secondColorWhite,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image,
            color: AppColors.mainColor,
            height: 30,
            width: 25,
          ),
          CustomText(text: text,
            fontSize:17 ,
            fontWeight: FontWeight.w500,
            textColor: AppColors.mainColorBlack,
          ),
        ],
      ),
    );
  }
}
