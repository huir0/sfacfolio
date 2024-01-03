import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team5/screen/noticeboard.dart';
import 'screen/join_screen.dart';
import 'screen/onboarding_3.dart';
import 'screen/shortpec.dart';
import 'screen/onboarding_first_screen.dart';
import 'screen/user_controller.dart';
import 'loginscreen/LoginPage2.dart';
import 'loginscreen/SplashPage.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(UserController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Notice_board(),
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
