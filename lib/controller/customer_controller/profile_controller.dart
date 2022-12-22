import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../core/components/colors.dart';
import '../../widgets/custom_text.dart';



class ProfileController extends GetxController{

  final picker = ImagePicker();
  File? selectImage;
  String? base64 ;
  String? imageName;


  Future<void> openCamera(context) async {
    final pickedFile = await picker.pickImage(
        imageQuality: 50,
        maxHeight: 300,
        maxWidth: 400,
        source: ImageSource.camera);
    if (pickedFile != null) {
      selectImage = File(pickedFile.path);
      // await  upload(selectImage);
    } else {
      print('No image selected.');
    }
  }

  Future<void> openGallery( context) async {
    final pickedFile = await picker.pickImage(
        imageQuality: 50,
        maxHeight: 300,
        maxWidth: 400,
        source: ImageSource.gallery);

    if (pickedFile != null) {
      selectImage = File(pickedFile.path);
      base64 = base64Encode(selectImage!.readAsBytesSync());
      imageName = selectImage?.path.split("_").last;
      print(imageName);

    } else {
      print('No image selected.');
    }

  }

  void openImagePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext openImagePicker) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: CupertinoActionSheet(
            cancelButton: CupertinoButton(
                child:  const  CustomText(
                  text: 'Cancel',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  textColor: AppColors.mainColorWhite,
                ),
                onPressed: () => Navigator.of(context).pop()),
            actions: <Widget>[

              TextButton(
                  onPressed: () {},
                  child:  const Text('Choose file', textAlign: TextAlign.center)),
              pickItem(
                  title:'Camera',
                  icon:'assets/images/camera.png',
                  onClick: () {
                    // ProfileController.openCamera(context);
                    Navigator.pop(context);
                  }),

              pickItem(
                  title: 'Gallery',
                  icon: 'assets/images/gallery.png',
                  onClick: () {
                    // ProfileCubit.get(context).openGallery(context);
                    Navigator.pop(context);
                  }),
            ],
          ),
        );
      },
    );
  }

  Widget pickItem(
      {required String title,
        required String icon,
        required VoidCallback onClick}) =>
      TextButton(
          onPressed: onClick,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  Image.asset(icon, height: 40),
                ]),
          )
      );
}