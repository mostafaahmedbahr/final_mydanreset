import 'package:final_mydanreset/Service_provider_screens/s_p_home_screen/widgets.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/components/colors.dart';
import '../../widgets/custom_app_bar.dart';

class ServiceProviderHomeScreen extends StatelessWidget {
  const ServiceProviderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(
          appBarToolbarHeight: 70,
          automaticallyLeading: true,
          appBarBackgroundColor: AppColors.mainColorWhite,
          appElevation: 0,
          titleContent: const Text(
            "Meydanrest",
            style: TextStyle(
              color: AppColors.mainColorBlack,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          actionsWidgets: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/img_11.png",
                height: 20,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.mainColorWhite,
        body: Padding(
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
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.secondColorWhite,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.mainColorBlack,
                      ),

                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
