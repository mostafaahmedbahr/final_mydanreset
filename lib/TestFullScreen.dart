import 'package:carousel_slider/carousel_slider.dart';
 import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';

class TestFullScreen extends StatelessWidget {
    TestFullScreen({Key? key}) : super(key: key);
  List imagesSlider = [
    "assets/images/img_19.png",
  ];
  var current = 0;
  var carouselController = CarouselController() ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  CarouselSlider(
        items: imagesSlider
            .map((item) {
          return FullScreenWidget(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                GestureDetector(
                    onTap: () {
                      // Get.to(()=>TestFullScreen());
                    },
                    child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:Image.asset(
                          "$item",
                          height: double.infinity,
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width * 0.98,
                        ),
                    )),
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  alignment: Alignment.bottomCenter,
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(15),
                      color: const Color(0xffD2C0B2)),
                  child: Text(
                    '${current + 1}/${imagesSlider.length}',
                    style:const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),

              ]),
          );
        }).toList(),
        carouselController: carouselController,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            // height: MediaQuery.of(context).size.height * 0.4,
            aspectRatio: 1,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration:
            const Duration(seconds: 4),
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              // changeIndicator(index);
            }),
      ),
    ),
    );
  }
}
