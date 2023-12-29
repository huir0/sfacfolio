import 'package:flutter/material.dart';
import '/screen/onboarding_first_screen.dart';

const partypopper = 'assets/images/Party_popper.png';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color buttonFontColor = Color(0xfff5f8ff);
    Color buttonColor = Color(0xff0059ff);
    Color fontColor = Color(0xff666666);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(partypopper),
              SizedBox(
                height: 34,
              ),
              Text(
                '회원가입 완료',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w700, height: 1.5),
              ),
              SizedBox(
                height: 47,
              ),
              Text.rich(
                TextSpan(
                  text: '지금 관심사를 설정하고\n',
                  children: <TextSpan>[
                    TextSpan(
                        text: '맞춤추천', style: TextStyle(color: buttonColor)),
                    TextSpan(text: '을 받아보세요!')
                  ],
                ),
                style: TextStyle(
                    height: 2, fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 147,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()), // 다른 웰컴 페이지로 이동시켜줘야 함
                  );
                },
                child: Text(
                  '나중에 설정하기',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: fontColor,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnBoardingFirstPage()));
                },
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return FittedBox(
                      child: Text(
                        '다음',
                        style: TextStyle(
                            color: buttonFontColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 22 / 18,
                            letterSpacing: -0.03),
                      ),
                      fit: BoxFit.scaleDown,
                    );
                  },
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: buttonColor),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
