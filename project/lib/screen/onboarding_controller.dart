import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  RxString sex = ''.obs;

  Rx<Color> inputColor = Color(0xfff8f8f9).obs;
  Rx<Color> textColor = Color(0xff999999).obs;
  Rx<Color> borderColor = Color(0xfff8f8f9).obs;

  TextEditingController birthdayController = TextEditingController();

  String get formattedBirthday {
    if (birthdayController.text.length != 6) return '';
    String yearPrefix =
        birthdayController.text.substring(0, 2).compareTo('22') >= 0
            ? '19'
            : '20';
    return '$yearPrefix${birthdayController.text.substring(0, 2)}'
        '.${birthdayController.text.substring(2, 4)}'
        '.${birthdayController.text.substring(4, 6)}.';
  }

  void saveSex(String value) {
    sex.value = value;
  }

// HJ 코드 ------------->
  String getSex() {
    return sex.toString();
  }

  //<-------------------------

  void updateColor(Color newInputColor, Color newTextColor) {
    inputColor.value = newInputColor;
    textColor.value = newTextColor;
    borderColor.value = newTextColor;
  }
}
