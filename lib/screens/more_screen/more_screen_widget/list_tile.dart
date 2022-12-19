import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key, required this.label, required this.onTap, required this.iconDataWidget, }) : super(key: key);

  final String label;
  final Function onTap;
  final Widget iconDataWidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        onTap();
      },
      leading: iconDataWidget,
      title:  Text(label,
        style:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),),
      trailing:const Icon(Icons.arrow_back_ios_new, color:   Color(0xff1E1E1E)),
    );
  }
}
