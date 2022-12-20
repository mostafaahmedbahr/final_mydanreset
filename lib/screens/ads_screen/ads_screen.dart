import 'package:final_mydanreset/core/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../widgets/custom_app_bar.dart';
import '../notifications_screen/notifications_screen.dart';
import 'ads_widgets/build_ads_widget.dart';

 class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: CustomAppBar(
              appBarToolbarHeight: 70,
              automaticallyLeading: true,
              appBarBackgroundColor: AppColors.mainColorWhite,
              appElevation: 0,
              leadingWidget:const Padding(
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/img.png",),
                  backgroundColor: Color(0xffFFFFFF),
                  minRadius: 50,
                  maxRadius: 75,
                ),
              ) ,
              titleContent: const Text("تسجيل الدخول",
                style: TextStyle(
                  color: Color(0xff878787),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
              actionsWidgets: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, PageTransition(
                        duration: const Duration(milliseconds: 400),
                        reverseDuration: const Duration(milliseconds: 400),
                        type: PageTransitionType.leftToRight,
                        child: const NotificationsScreen(),
                        inheritTheme: true,
                        ctx: context));
                  },
                  icon: Image.asset("assets/images/img_11.png",
                    height: 20,),
                ),
              ],
            ),
            backgroundColor:const Color(0xffFFFFFF) ,
            body: Padding(
              padding:const EdgeInsets.all(20),
              child: ListView.separated(
                physics:const BouncingScrollPhysics(),
                itemBuilder: (context,index){
                  return  const  BuildAdsWidget(
                    width: double.infinity,
                    height: 160,
                    radius: 10,
                    imageUrl: "assets/images/img_22.png",
                  );
                },
                separatorBuilder: (context,index){
                  return const SizedBox(height: 10,);
                },
                itemCount: 10,
              ),
            ),
          ),
        ));
  }
}
