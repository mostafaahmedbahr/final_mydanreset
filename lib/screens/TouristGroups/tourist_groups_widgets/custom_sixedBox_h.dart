import 'package:flutter/material.dart';
class CustomSizedBoxH extends StatelessWidget {
  const CustomSizedBoxH({Key? key, required this.h}) : super(key: key);
final double h;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: h,
    );
  }
}

class CustomSizedBoxW extends StatelessWidget {
  const CustomSizedBoxW({Key? key, required this.w}) : super(key: key);
  final double w;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: w,
    );
  }
}

