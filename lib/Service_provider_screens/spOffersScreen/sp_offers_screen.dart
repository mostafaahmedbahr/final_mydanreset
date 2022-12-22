import 'package:final_mydanreset/Service_provider_screens/spOffersScreen/sp_offers_widgets/complete_offers.dart';
import 'package:final_mydanreset/Service_provider_screens/spOffersScreen/sp_offers_widgets/offers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../controller/s_p_controller/sp_offers_controller.dart';
import '../../core/components/colors.dart';
import '../../screens/my_reservations_screen/MyReservations_widgets/build_status_widget.dart';
 class SpOffersScreen extends StatelessWidget {
  const SpOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorWhite,
      body:
      GetBuilder<SpOffersController>(
        init: SpOffersController(),
        builder: (c){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                width: double.infinity,
                color: const Color(0xff06B3C4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildStatusWidget(
                        text: "عروض منشورة",
                        color: c.pageIndex==1 ? AppColors.hoverMainColor : AppColors.mainColor,
                        onTap: (){
                          c.changeIndex(c.pageIndex=1);
                          print(c.pageIndex);
                        },
                      ),

                      BuildStatusWidget(
                        text: "عروض مكتملة",
                        color: c.pageIndex==2 ? AppColors.hoverMainColor : AppColors.mainColor,
                        onTap: (){
                          c.changeIndex(c.pageIndex=2);
                          print(c.pageIndex);
                        },

                      ),

                    ],
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(20),
                child:  TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    //<-- SEE HERE
                    fillColor: AppColors.mainColorWhite,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    hintText: "اختر التاريخ",
                    hintStyle: const TextStyle(
                      color: AppColors.mainColorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      child: SvgPicture.asset("assets/images/Vector (19).svg"),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      child: SvgPicture.asset("assets/images/calendar.svg"),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return   Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child:  c.pageIndex ==1 ? const buildCompleteOfferWidget() : const buildDoneOfferWidget(),
                    );
                  },
                ),
              ),
            ],
          );
        },

      ),




    );
  }
}
