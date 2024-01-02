import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/join_screen.dart';
import 'screen/onboarding_3.dart';
import 'screen/shortpec.dart';
import 'screen/onboarding_first_screen.dart';
import 'screen/user_controller.dart';
import 'loginscreen/LoginPage2.dart';
import 'loginscreen/SplashPage.dart';

void main() {
  Get.put(UserController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shortpec(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'PretendardVariable',
          ),
        ),
      ),
    ),
  );
}
