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
                  height: 120,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipPath(
                        clipper: const CustomCornerClipPath(),
                        child: Container(
                          height: double.infinity, //based on your need
                            width: 120,
                          decoration: BoxDecoration(
                            color: AppColors.mainColorWhite,
                            borderRadius: const BorderRadius.only(
                              topRight:    Radius.circular(10) ,
                              topLeft: Radius.circular(10) ,
                              bottomLeft:Radius.circular(10) ,
                            ),
                            border: Border.all(
                              color: AppColors.secondColorWhite
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text("دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت مت دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت مت دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت مت دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت مت "),
                          )
                        ),
                      ),
                      Positioned(
                        bottom: 112,
                        right: 0,
                        child:   SizedBox(
                          width: 8,
                          height: 8,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.red,
                            ),
                          ),
                        ),),
                    
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


class CustomCornerClipPath extends CustomClipper<Path> {
  final double cornerR;
  const CustomCornerClipPath({this.cornerR = 10.0});

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





