import 'package:flutter/material.dart';
class CustomContainerIcon extends StatelessWidget {
    CustomContainerIcon({Key? key,required this.onTap, required this.height, required this.width, required this.margin, required this.padding, required this.opacity, required this.radius, required this.child}) : super(key: key);

  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double opacity;
  final double radius;
  void Function() onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(opacity),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
