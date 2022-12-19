import 'package:flutter/material.dart';
import 'package:rate/rate.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.height, required this.width, required this.radius, required this.horizontal, required this.vertical, required this.text1, required this.text2, required this.textColor1, required this.fontSize1, required this.fontWeight1, required this.textColor2, required this.fontSize2, required this.fontWeight2}) : super(key: key);

  final double height;
  final double width;
  final double radius;
  final double horizontal;
  final double vertical;
  final String text1;
  final String text2;
  final Color textColor1;
  final double fontSize1;
  final FontWeight fontWeight1;
  final Color textColor2;
  final double fontSize2;
  final FontWeight fontWeight2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child:Padding(
        padding:   EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(text1,
                  style:   TextStyle(
                    color:      textColor1,
                    fontSize:   fontSize1,
                    fontWeight: fontWeight1,
                  ),),
                Text(text2,
                  style: TextStyle(
                    color:       textColor2,
                    fontWeight:  fontWeight2,
                    fontSize:   fontSize2,
                  ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,color: Color(0xffFF4471),),
                    Text(text2,
                      style: TextStyle(
                        color:       textColor2,
                        fontWeight:  fontWeight2,
                        fontSize:   fontSize2,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    const  Text("4.9",
                      style: TextStyle(
                        color: Color(0xff1E1E1E),
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),),
                    Rate(
                      iconSize: 20,
                      color: const Color(0xffFFC700),
                      allowHalf: true,
                      allowClear: true,
                      initialValue: 3.5,
                      readOnly: false,
                      onChange: (value) => print(value),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
