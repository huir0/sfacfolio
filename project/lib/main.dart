import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team5/community/view/projectscreen/mainscreen.dart';
import 'package:team5/screen/SecondOnboringPage.dart';
import 'package:team5/screen/StudyPage.dart';
import 'package:team5/screen/community_study.dart';
import 'screen/employment_dummy_data.dart';
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
      home: Mainscreen(),
      debugShowCheckedModeBanner: false,
      // home: Passwordpage_1(),
      home: StudyPage(),
      // home: CommunityStudyPage(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            // fontFamily: 'PretendardVariable',
            fontFamily: 'Pretendard',
          ),
        ),
      ),
    ),
  );
}
