import 'package:get/get.dart';

class SpOffersController extends GetxController{

  var pageIndex = 1;

  changeIndex(index){
    pageIndex = index;
    update();
  }
}