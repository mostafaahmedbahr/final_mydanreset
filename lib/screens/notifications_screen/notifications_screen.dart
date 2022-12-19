import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';

import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

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
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                return  SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [

                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(16)),
                        child: SizedBox(
                          width: 600,
                          height: 200,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              /// background image
                              Container(
                                color: Colors.deepPurple,
                              ),
                              CustomPaint(
                                painter: CardPaint(),
                                size: const Size(600, 200),
                              ),
                            ],
                          ),
                        ),
                      ),

                    //   Image.asset(
                    //     'assets/images/subtract.png',
                    //     width: double.infinity,
                    //     height: 150,
                    //   ),
                    //   Padding(padding: const EdgeInsets.all(20),
                    //   child:  Column(
                    //     children: [
                    //       Row(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children:const [
                    //           CustomText(text: "طلب جديد",
                    //             fontWeight: FontWeight.w800,
                    //             fontSize: 14,
                    //             textColor: AppColors.mainColorBlack,
                    //           ),
                    //           Spacer(),
                    //           CustomText(text: "1 د"),
                    //
                    //         ],
                    //       ),
                    //       Container(
                    //        margin:const EdgeInsets.symmetric(vertical: 10),
                    //         constraints:const BoxConstraints(
                    //           minWidth: double.infinity,
                    //           minHeight: 50,
                    //           maxWidth: double.infinity,
                    //           maxHeight: 60,
                    //         ),
                    //         child: const  CustomText(text: "دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ ن ",
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 12,
                    //           textOverflow: TextOverflow.ellipsis,
                    //           maxLines: 2,
                    //           textColor:AppColors.mainColorBlack ,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   ),
                    //
                    //
                    // Positioned(
                    //   top: 10,
                    //   right: 3,
                    //   child:   SizedBox(
                    //   width: 8,
                    //   height: 8,
                    //   child: Container(
                    //     decoration: BoxDecoration (
                    //       borderRadius: BorderRadius.circular(4),
                    //       color: Colors.red,
                    //     ),
                    //   ),
                    // ),),

                    ],
                  ),
                );
              }),

          ),
        ),
      ),
    );
  }

}
class CardPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.red;

    Path path = Path()
      ..lineTo(size.width * .3, -500)
      ..lineTo(size.width , size.height * .2)
      ..lineTo(size.width  , size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
