import 'package:final_mydanreset/core/components/colors.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
class BuildCustomNotificationWidget extends StatelessWidget {
  const BuildCustomNotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: const EdgeInsets.all(20),

          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "طلب جديد",
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    textColor: AppColors.mainColorBlack,
                  ),
                  CustomText(text: "د5",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.darkGrey,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              CustomText(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  textColor: AppColors.mainColorBlack,
                  text: "دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت متدقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل لاثم وه صنلا اذه ،ىبرعلا صنلا دلوم نم صنلا اذه ديلوت مت")
            ],
          ),
        ),
        const  CircleAvatar(
            backgroundColor: Colors.red,
            radius: 10,
          ),
      ],
    );
  }
}
