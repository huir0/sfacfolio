import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 상단 상태표시줄 색상 계속 바껴서 고정해놧습니다 =================>
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    // <============================================================
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Container(
          width: 360,
          height: 740,
          padding: EdgeInsets.fromLTRB(
            80,
            300,
            80,
            10,
          ),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 51,
                child: Image.asset(
                  'assets/images/sfac.png',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  '당신을 위한 취업 저격수',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 0.09,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  '스펙폴리오',
                  style: TextStyle(
                    color: Color(0xFF0059FF),
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                  ), // 텍스트 색상을 #FFFFFF로 지정
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
