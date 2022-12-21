import 'package:final_mydanreset/core/components/colors.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
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
      title:  CustomText(text: label,
          fontSize: 20,
          fontWeight: FontWeight.w500,
       ),
      trailing:const Icon(Icons.arrow_back_ios_new, color:  AppColors.mainColorBlack),
    );
  }
}
