import 'package:final_mydanreset/screens/ads_screen/ads_screen.dart';
import 'package:final_mydanreset/screens/home_screen/home_screen.dart';
 import 'package:final_mydanreset/screens/more_screen/more_screen.dart';
import 'package:final_mydanreset/screens/my_reservations_screen/my_reservations_screen.dart';
import 'package:get/get.dart';

import '../screens/hotels_screen/hotels_screen.dart';
import '../screens/search/search_screen.dart';
import '../text_screen.dart';

class HomeController extends GetxController
{
  int bottomIndex = 0;

  void changeBottomNavBarIndex(int index)
  {
    bottomIndex = index;
    update();
  }

  List screens=[
    HotelsScreen(),
    SearchScreen(),
    MyReservationsScreen(),
    AdsScreen(),
    MoreScreen(),





  ];
}