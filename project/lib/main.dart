import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/screen/community_screen.dart';

import 'screen/employment_dummy_data.dart';

import 'screen/noticeboard.dart';
import 'screen/passwordpage_1.dart';
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
  Get.put(ClickController());
  Get.put(BookmarkController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Community(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Pretendard',
          ),
        ),
      ),
    ),
  );
}
