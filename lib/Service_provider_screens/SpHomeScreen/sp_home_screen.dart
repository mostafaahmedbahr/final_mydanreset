import 'package:final_mydanreset/controller/s_p_controller/s_p_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/components/colors.dart';
import '../../widgets/custom_text.dart';
import '../s_p_layout_screen/widgets.dart';
class SpHomeScreen extends StatelessWidget {
  const SpHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetBuilder<SpHomeController>(
      init: SpHomeController(),
      builder: (c){
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
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
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BuildCustomCard(
                    color: AppColors.mainColor,
                    title: "الأرباح",
                    subTitle: "\$3500",
                    img: "assets/images/Union.svg",
                  ),
                  BuildCustomCard(
                    color: AppColors.secondColor,
                    title: "حجوزات اليوم",
                    subTitle: "12",
                    img: "assets/images/Group.svg",
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BuildCustomCard(
                    color: AppColors.mainColorGreen,
                    title: "حجوزات مكتملة",
                    subTitle: "275",
                    img: "assets/images/calendar2.svg",
                  ),
                  BuildCustomCard(
                    color: AppColors.mainColorRed,
                    title: "حجوزات بأنتظار التحصيل",
                    subTitle: "6",
                    img: "assets/images/loader.svg",
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomText(
                text: "حجوزات اليوم",
                fontWeight: FontWeight.w800,
                fontSize: 17,
                textColor: AppColors.mainColorBlack,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context,index){
                    return const SizedBox(height: 10,);
                  },
                  itemBuilder: (context, index) {
                    return const BuildCustomCardOfReservation(
                      date: "22 نوفمبر - 25 نوفمبر - نزيلان - غرفة",
                      name: "مصطفى بحر" ,
                      reservationNumber: "#236372",
                      hour: "05:00 pm ",
                      color: AppColors.secondColorGrey,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}
