import 'package:final_mydanreset/screens/more_screen/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Service_provider_screens/AdRoomScreen/add_room_screen.dart';
import '../../Service_provider_screens/SpHomeScreen/sp_home_screen.dart';
import '../../Service_provider_screens/SpMoreScreen/sp_more_screen.dart';
import '../../Service_provider_screens/SpReserveScreen/sp_reserve_screen.dart';
import '../../Service_provider_screens/spOffersScreen/sp_offers_screen.dart';

class SpHomeController extends GetxController
{
  int bottomNavBarIndex = 0;
  changeBottomNavBarIndex(index){
    bottomNavBarIndex = index;
    update();
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const SpHomeScreen();
  List screens = [
    const SpHomeScreen(),
    const SpReserveScreen(),
    // const AddRoomScreen(),
    const SpOffersScreen(),
    SpMoreScreen(),
    // SpMoreScreen(),
  ];


}