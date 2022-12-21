import 'package:final_mydanreset/core/components/colors.dart';
import 'package:flutter/material.dart';
class BuildAdsWidget extends StatelessWidget {
  const BuildAdsWidget({Key? key, required this.width, required this.height, required this.imageUrl, required this.radius}) : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: AppColors.mainColorWhite,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(imageUrl,fit: BoxFit.cover,),
      ),
    );
  }
}
