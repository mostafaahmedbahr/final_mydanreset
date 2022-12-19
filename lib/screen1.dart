import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:pinch_zoom_release_unzoom/pinch_zoom_release_unzoom.dart';

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);
  List imagesSlider = [
    "assets/images/img_19.png",
    "assets/images/photo-1498889444388-e67ea62c464b.jpg",
  ];
  var current = 0;
  var carouselController = CarouselController() ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CarouselSlider(
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
                        child:Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.grey,
                          child: PinchZoomReleaseUnzoomWidget(
                            useOverlay: false,
                            resetDuration: const Duration(milliseconds: 100),
                            maxScale: 2.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:Image.asset(
                                "$item",
                                height: 100,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.98,
                              ),
                            ),
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
    ),
    );
  }
}
