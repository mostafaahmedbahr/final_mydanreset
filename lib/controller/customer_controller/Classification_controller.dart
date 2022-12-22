import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassificationController extends GetxController
{
  RangeValues values2 = const RangeValues(0, 100);
  changeValues2(values)
  {
    values2 = values;
    update();
  }
  RangeValues values3 = const RangeValues(0, 100);
  changeValues3(values)
  {
    values3 = values;
    update();
  }
  bool isChecked = false;
  changeIsChecked(isChecked1)
  {
    isChecked = isChecked1;
    update();
  }
  int index2 = 0;
  changeIndex2(index)
  {
    index2 = index;
    update();
  }
  bool hotelChainV1 = false;
  bool hotelChainV2 = false;
  bool hotelChainV3 = false;
  changeV1V2V3(bool v1 , bool v2 , bool v3)
  {
    hotelChainV1 = v1;
    hotelChainV2 = v2;
    hotelChainV3 = v3;
    update();
  }


  bool hotelFeaturesV1 = false;
  bool hotelFeaturesV2 = false;
  bool hotelFeaturesV3 = false;
  changeHotelFeaturesV1V2V3(bool v1 , bool v2 , bool v3)
  {
    hotelFeaturesV1 = v1;
    hotelFeaturesV2 = v2;
    hotelFeaturesV3 = v3;
    update();
  }

  bool roomFeaturesV1 = false;
  bool roomFeaturesV2 = false;
  bool roomFeaturesV3 = false;
  changeRoomFeaturesV1V2V3(bool v1 , bool v2 , bool v3)
  {
    roomFeaturesV1 = v1;
    roomFeaturesV2 = v2;
    roomFeaturesV3 = v3;
    update();
  }
}