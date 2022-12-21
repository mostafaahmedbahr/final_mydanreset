import 'package:flutter/material.dart';

import '../../../core/components/colors.dart';
import '../../../widgets/custom_text.dart';
class BuildStatusWidget extends StatelessWidget {
  const BuildStatusWidget({Key? key, required this.color, required this.text,required this.onTap}) : super(key: key);
final Color color;
final String text;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return    Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: double.infinity,
          color :color,
          child:    Center(
            child:  CustomText(text:text,
              textColor:AppColors.mainColorWhite ,
              fontWeight: FontWeight.w800,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
