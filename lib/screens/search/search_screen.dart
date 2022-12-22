import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:page_transition/page_transition.dart';
 import '../../controller/customer_controller/home_controller.dart';
import '../../controller/customer_controller/hotels_controller.dart';
import '../../core/components/colors.dart';
import 'hotels_search/hotel_search_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var homeController = Get.put(HomeController());
  var hotelsController = Get.put(HotelsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GetBuilder<HotelsController>(
            init: HotelsController(),
            builder: (c){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child:  ListView.separated(
                      physics:const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)
                      {
                        return GestureDetector(
                          onTap: (){
                            hotelsController.currentPageIndex = index;
                            hotelsController.changeIndex( hotelsController.currentPageIndex );
                            print(hotelsController.currentPageIndex);

                          },
                          child: Container(
                            width: 94,
                            height: 30,
                            decoration: BoxDecoration(
                              color:hotelsController.currentPageIndex==index ? const Color(0xff06B3C4) :  const Color(0xffFFFFFF),
                              border: Border.all(
                                color:const Color(0xffDFDFDF),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("${hotelsController.suggestionsIconsImages[index]}",
                                  color: hotelsController.currentPageIndex==index ? Colors.white : Colors.grey,
                                  height: 15,
                                  width: 17.5,),
                                Text("${hotelsController.suggestions[index]}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: hotelsController.currentPageIndex==index ? Colors.white : Colors.grey,
                                  ),),

                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(width: 10,);
                      },
                      itemCount: hotelsController.suggestions.length,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  if(hotelsController.currentPageIndex==0)
                    const HotelsSearchScreen(),
                  if(hotelsController.currentPageIndex==1)
                    Column(
                      children: [
                        Text("المطار"),

                      ],
                    ),
                  if(hotelsController.currentPageIndex==2)
                    Text("سيارة"),
                  if(hotelsController.currentPageIndex==3)
                    Column(
                      children: [
                        Text("شقق"),

                      ],
                    ),
                  if(hotelsController.currentPageIndex==4)
                    Text("اراضى"),
                  if(hotelsController.currentPageIndex==5)
                    Column(
                      children: [
                        Text("منشات"),

                      ],
                    ),


                ],
              );
            },

          ),
        ),
      ),
    );
  }
}
