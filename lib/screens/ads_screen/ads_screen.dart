import 'package:flutter/material.dart';

import 'ads_widgets/build_ads_widget.dart';

 class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
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
