import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'hotels_search_result_screen.dart';
class HotelsSearchScreen extends StatelessWidget {
  const HotelsSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        TextFormField(
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.symmetric(vertical: 8),
            hintText: "ألوجهة",
            prefixIcon:const Icon(Icons.location_on_outlined,
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1, color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:const BorderSide(
                width: 1, color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 12,),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 92,
              width: double.infinity,
              decoration: BoxDecoration(
                border:   Border.all(
                  width: 1, color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const  Text("موعد الوصول",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffBABABA),
                        ),),
                      Row(
                        children:const [
                          Text("23",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(width: 6,),
                          Text("نوفمبر 2022",
                            style: TextStyle(
                              color: Color(0xff06B3C4),
                            ),),

                        ],
                      ),
                      const Text("الاربعاء",
                        style:  TextStyle(
                          color:  Color(0xff06B3C4),
                        ),),
                    ],
                  ),
                  const  VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("موعد المغادرة",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffBABABA),
                        ),),
                      Row(
                        children:const [
                          Text("23",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(width: 6,),
                          Text("نوفمبر 2022",
                            style: TextStyle(
                              color:  Color(0xff06B3C4),
                            ),),

                        ],
                      ),
                      const Text("الاربعاء",
                        style:  TextStyle(
                          color:  Color(0xff06B3C4),
                        ),),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset("assets/images/Ellipse 5.png"),
            Image.asset("assets/images/Group 107.png"),
          ],
        ),
        const SizedBox(height: 12,),
        TextFormField(
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.symmetric(vertical: 8),
            hintText: "غرفتان - نزيلان",
            hintStyle:const TextStyle(
              color: Color(0xff000000),
              fontSize: 14,
            ),
            prefixIcon:const Icon(Icons.bed,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(Icons.add,
              color: Color(0xff06B3C4),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1, color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:const BorderSide(
                width: 1, color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 12,),
        const Text("غرفة 1",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),),
        const SizedBox(height: 6,),
        Container(
          height: 84,
          width: double.infinity,
          decoration: BoxDecoration(
            border:   Border.all(
              width: 1, color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding:const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Row(
                      children:  [
                        Image.asset("assets/images/img_14.png",
                          height: 20,
                          width: 20,
                          color: const Color(0xff000000),
                        ),
                        const SizedBox(width: 10,),
                        const    Text("بالغ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child:Icon(Icons.remove,
                            color: Color(0xffBABABA),
                            size: 20,)),
                        ),
                        const SizedBox(width: 13,),
                        const Text("2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                        const SizedBox(width: 13,),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color:const Color(0xff7A7890),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child:const Center(child: Icon(Icons.add,
                            size: 20,
                            color: Color(0xffFFFFFF),)),
                        ),

                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    Row(
                      children:  [
                        Image.asset("assets/images/img_16.png",
                          height: 20,
                          width: 20,),
                        const SizedBox(width: 10,),
                        const  Text("طفل",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child:Icon(Icons.remove,
                            color: Color(0xffBABABA),
                            size: 20,)),
                        ),
                        const SizedBox(width: 13,),
                        const Text("2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                        const SizedBox(width: 13,),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color:const Color(0xff7A7890),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child:const Center(child: Icon(Icons.add,
                            size: 20,
                            color: Color(0xffFFFFFF),)),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          children:  [
            const Text("غرفة 2",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),),
            const Spacer(),
            Image.asset("assets/images/img_15.png",
              height: 24,
              width: 24,),
          ],
        ),
        const SizedBox(height: 6,),
        Container(
          height: 84,
          width: double.infinity,
          decoration: BoxDecoration(
            border:   Border.all(
              width: 1, color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding:const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Row(
                      children:  [
                        Image.asset("assets/images/img_14.png",
                          height: 20,
                          width: 20,
                          color: const Color(0xff000000),
                        ),
                        const SizedBox(width: 10,),
                        const    Text("بالغ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child:Icon(Icons.remove,
                            color: Color(0xffBABABA),
                            size: 20,)),
                        ),
                        const SizedBox(width: 13,),
                        const Text("2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                        const SizedBox(width: 13,),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color:const Color(0xff7A7890),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child:const Center(child: Icon(Icons.add,
                            size: 20,
                            color: Color(0xffFFFFFF),)),
                        ),

                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    Row(
                      children:  [
                        Image.asset("assets/images/img_16.png",
                          height: 20,
                          width: 20,),
                        const SizedBox(width: 10,),
                        const  Text("طفل",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child:Icon(Icons.remove,
                            color: Color(0xffBABABA),
                            size: 20,)),
                        ),
                        const SizedBox(width: 13,),
                        const Text("2",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                        const SizedBox(width: 13,),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color:const Color(0xff7A7890),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child:const Center(child: Icon(Icons.add,
                            size: 20,
                            color: Color(0xffFFFFFF),)),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 35,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff06B3C4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

            ),
            onPressed: (){
              Get.to(()=>const HotelsSearchResultScreen());
            },
            child:const Text("البحث",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
                color: Color(0xffFFFFFF),
              ),),
          ),
        ),
      ],
    );
  }
}
