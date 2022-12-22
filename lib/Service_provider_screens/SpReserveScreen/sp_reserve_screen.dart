import 'package:final_mydanreset/controller/s_p_controller/sp_reserve_controller.dart';
import 'package:flutter/material.dart';
 import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../core/components/colors.dart';
 import '../../screens/my_reservations_screen/MyReservations_widgets/build_status_widget.dart';
import '../s_p_layout_screen/widgets.dart';
class SpReserveScreen extends StatelessWidget {
  const SpReserveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorWhite,
      body:  Column(
        children: [
          GetBuilder<SpReservationController>(
            init: SpReservationController(),
            builder: (c){
              return Container(
                height: 56,
                width: double.infinity,
                color: const Color(0xff06B3C4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildStatusWidget(
                        text: "قادمة",
                        color: c.pageIndex==1 ? AppColors.hoverMainColor : AppColors.mainColor,
                        onTap: (){
                          c.changeIndex(c.pageIndex=1);
                          print(c.pageIndex);
                        },
                      ),
                      BuildStatusWidget(
                        text: "نشطة",
                        color: c.pageIndex==2 ? AppColors.hoverMainColor : AppColors.mainColor,
                        onTap: (){
                          c.changeIndex(c.pageIndex=2);
                          print(c.pageIndex);
                        },
                      ),
                      BuildStatusWidget(
                        text: "مكتملة",
                        color: c.pageIndex==3 ? AppColors.hoverMainColor : AppColors.mainColor,
                        onTap: (){
                          c.changeIndex(c.pageIndex=3);
                          print(c.pageIndex);
                        },
                      ),

                    ],
                  ),
                ),
              );
            },

          ),
          const SizedBox(height: 15,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index)
            {
              return const  Padding(
                padding:   EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: BuildCustomCardOfReservation(
                  date: "22 نوفمبر - 25 نوفمبر - نزيلان - غرفة",
                  name: "مصطفى بحر" ,
                  reservationNumber: "#236372",
                  hour: "05:00 pm ",
                  color: AppColors.mainColor,
                ),
              );
            }),),
        ],
      ),
    );
  }
}
