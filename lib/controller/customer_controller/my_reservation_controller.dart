import 'package:get/get.dart';

class ReservationController extends GetxController
{
  var pageIndex = 1;

  changeIndex(index){
    pageIndex = index;
    update();
  }
}