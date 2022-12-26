import 'package:final_mydanreset/core/components/colors.dart';
import 'package:final_mydanreset/widgets/custom_button.dart';
import 'package:final_mydanreset/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';
class SpRatingScreen extends StatelessWidget {
  const SpRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(text: "المراجعات",
          fontSize: 17,
          fontWeight: FontWeight.w800,
          textColor: AppColors.mainColorBlack,
        ),
        const SizedBox(height: 16,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 85,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xff2F8D96),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:const Color(0xcc000000),
                ),
                child:const Icon(Icons.star,color: AppColors.mainColorYellow,size: 30,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Rate(
                        iconSize: 20,
                        color: const Color(0xffFFC700),
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 3.5,
                        readOnly: false,
                        onChange: (  value) => print(value),
                      ),
                      SizedBox(width: 10,),
                      const CustomText(
                        text: "4.9",
                        textColor: AppColors.mainColorBlack,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                  CustomText(text: "96 المراجعات",
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_2.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_2.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_2.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(10),
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color:const  Color(0xffF5F4F8) ,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/img_2.png"),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(text: "مصطفى بحر",
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        textColor: AppColors.mainColorBlack,
                      ),
                      SizedBox(width: 100,),
                      Rate(
                        iconSize: 20,
                        color: const Color(0xffFFC700),
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 3.5,
                        readOnly: false,
                        onChange: (  value) => print(value),
                      ),
                    ],
                  ),
                  Text("دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل ل ت مت"),
                  CustomText(text: "12 Days "),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(10),
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color:const  Color(0xffF5F4F8) ,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/img_2.png"),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(text: "مصطفى بحر",
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        textColor: AppColors.mainColorBlack,
                      ),
                      SizedBox(width: 100,),
                      Rate(
                        iconSize: 20,
                        color: const Color(0xffFFC700),
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 3.5,
                        readOnly: false,
                        onChange: (  value) => print(value),
                      ),
                    ],
                  ),
                  Text("دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل ل ت مت"),
                  CustomText(text: "12 Days "),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(10),
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color:const  Color(0xffF5F4F8) ,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/img_2.png"),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(text: "مصطفى بحر",
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        textColor: AppColors.mainColorBlack,
                      ),
                      SizedBox(width: 100,),
                      Rate(
                        iconSize: 20,
                        color: const Color(0xffFFC700),
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 3.5,
                        readOnly: false,
                        onChange: (  value) => print(value),
                      ),
                    ],
                  ),
                  Text("دقل ،ةحاسملا سفن يف لدبتسي نأ نكمي صنل ل ت مت"),
                  CustomText(text: "12 Days "),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 80,),
        CustomButton(
            height: 50,
            width: double.infinity,
            btnColor: const  Color(0xffF5F4F8) ,
            btnText:const CustomText(text: 'عرض جميع المراجعات',
            textColor: AppColors.mainColorBlack,),
            onPressed: (){},
        ),
      ],
    ),);
  }
}
