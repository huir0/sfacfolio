import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team5/screen/shortpec.dart';
import '/loginscreen/LoginPage.dart';
import '/portfolio/sfaclog_custom_recommend.dart';
import '/screen/SplashPage.dart';
import '/screen/employment_dummy_data.dart';
import '/screen/user_controller.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(UserController());
  Get.put(ClickController());
  Get.put(BookmarkController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Pretendard',
          ),
        ),
      ),
    ),
  );
  Future.delayed(
    Duration(seconds: 3),
    () {
      Get.off(LoginPage2());
    },
  );
}
