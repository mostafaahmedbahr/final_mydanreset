import 'package:get/get.dart';

class HotelsController extends GetxController
{
  var currentPageIndex = 0;

  changeIndex(index){
    currentPageIndex = index;
    update();
  }

  var currentIndexForDetails = 1;
  changeIndexForDetails(index){
    currentIndexForDetails = index;
    update();
  }

  List suggestionsIconsImages =  [
    "assets/images/img_8.png",
    "assets/images/img_9.png",
    "assets/images/img_8.png",
    "assets/images/img_8.png",
    "assets/images/img_8.png",
    "assets/images/img_8.png",
  ];
  List suggestions =  [
    "فنادق",
    "المطار",
    "سيارة",
    "منشأت",
    "منشأت",
    "منشأت",

  ];
}