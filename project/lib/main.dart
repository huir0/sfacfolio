import 'package:flutter/material.dart';
import 'package:project/Login/FindokLoginPage.dart';
import 'package:project/Login/LoginPage.dart';
import 'package:project/Login/SplashPage.dart';
import 'package:project/Screen/StudyPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudyPage(),
      theme: ThemeData(fontFamily: 'Pretendard'),
      themeMode: ThemeMode.system,
    );
  }
}
