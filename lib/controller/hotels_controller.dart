import 'package:get/get.dart';

class HotelsController extends GetxController
{
  var currentIndex = 1;

  changeIndex(index){
    currentIndex = index;
    update();
  }
}