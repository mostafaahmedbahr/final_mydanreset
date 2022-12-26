import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';

import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';
import 'build_custom_notification_widget.dart';

class SpNotificationsScreen extends StatelessWidget {
    SpNotificationsScreen({Key? key}) : super(key: key);
  String massage ='''I hope thhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhe post helpsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss you get started in writing some of the most common test cases for the SMS functionality. I’d appreciate if you comment on the post and share it with others''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.mainColorWhite,
          appBar: CustomAppBar(
            appBarToolbarHeight: 70,
            automaticallyLeading: true,
            appBarBackgroundColor: AppColors.mainColorWhite,
            appElevation: 0,
            leadingWidget: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset("assets/images/Vector.svg"),
            ),
            titleContent: const Text(
              "التنبيهات",
              style: TextStyle(
                color: AppColors.mainColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          body:   Padding(
            padding:const EdgeInsets.symmetric(horizontal: 2),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder:  (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                    child: BuildCustomNotificationWidget(),
                  );
                },

          ),

        ),
      ),
      ),
    );
  }
  Widget buildChildForListView(BuildContext context, int index) {
    return   Stack(

        children: [
          Positioned(bottom:massage.length.toDouble(),left:MediaQuery.of(context).size.width*.9,child:  Container(
            width: 20,
            height: 20,
            decoration:const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
            ),
          )
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            height: massage.length.toDouble(),
            margin: const EdgeInsets.all(20.0),
            decoration: ShapeDecoration(shape: WeirdBorder(radius: 20), color: Colors.black54),
            child:  Text(massage,style: const TextStyle(fontSize: 20),),
          ),

        ]

    );
  }

}



class CustomCornerClipPath extends CustomClipper<Path> {
  final double cornerR;
  const CustomCornerClipPath({this.cornerR = 16.0});

  @override
  Path getClip(Size size) => Path()
    ..lineTo(size.width, 0)
    ..lineTo(
      size.width,
      size.height - cornerR,
    )
    ..arcToPoint(
      Offset(
        size.width - cornerR,
        size.height,
      ),
      radius: Radius.circular(cornerR),
      clockwise: false,
    )
    ..lineTo(0, size.height);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WeirdBorder extends ShapeBorder {
  final double? radius;
  final double? pathWidth;

  WeirdBorder({@required this.radius, this.pathWidth = 1});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect, textDirection: textDirection!), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) => _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => WeirdBorder(radius: radius);

  Path _createPath(Rect rect) {
    final innerRadius = radius! + pathWidth!;
    final innerRect = Rect.fromLTRB(rect.left + pathWidth!, rect.top + pathWidth!, rect.right - pathWidth!, rect.bottom - pathWidth!);

    final outer = Path.combine(PathOperation.difference, Path()..addRect(rect), _createBevels(rect, radius!));
    final inner = Path.combine(PathOperation.difference, Path()..addRect(innerRect), _createBevels(rect, innerRadius));
    return Path.combine(PathOperation.difference, outer, inner);
  }

  Path _createBevels(Rect rect, double radius) {
    return Path()
      ..addOval(Rect.fromCircle(center: Offset(rect.right-7, rect.top+7), radius: radius));

  }
}







