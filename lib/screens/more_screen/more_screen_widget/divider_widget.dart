import 'package:flutter/material.dart';
class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Divider(
        thickness: 2,
        color: Colors.grey,
      ),);
  }
}
