import 'package:flutter/material.dart';
class DividerWidgetHorizontal extends StatelessWidget {
  const DividerWidgetHorizontal({Key? key, this.thickness, required this.color}) : super(key: key);
final double? thickness;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: color,
    );
  }
}
