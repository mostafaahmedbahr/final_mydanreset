import 'package:get/get.dart';

class SpReservationController extends GetxController{

  var pageIndex = 1;

  changeIndex(index){
    pageIndex = index;
    update();
  }
}