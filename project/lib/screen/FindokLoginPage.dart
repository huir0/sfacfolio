import 'package:flutter/material.dart';
import 'package:team5/utill/color.dart';


class FindokLoginPage extends StatefulWidget {
  const FindokLoginPage({super.key});

  @override
  State<FindokLoginPage> createState() => _FindokLoginPageState();
}

class _FindokLoginPageState extends State<FindokLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.close))],
          ),
          body: SafeArea(
              child: Column(
            children: [
              Center(
                child: Text('아이디 찾기',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.Neutral100,
                        fontFamily: 'Pretendard')),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '정보와 일치하는 아이디입니다',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 328,
                height: 68,
                color: AppColor.Neutral5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'abcdefg123@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.Primary100,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 48,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '비밀번호 찾기',
                        style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            color: AppColor.Primary100),
                      ),
                      style: OutlinedButton.styleFrom(
                          side:
                              BorderSide(width: 1, color: AppColor.Primary100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 160,
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            elevation: 0,
                            backgroundColor: AppColor.Primary100),
                        onPressed: () {},
                        child: Text(
                          '로그인',
                          style: TextStyle(
                              color: AppColor.White,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )),
                  )
                ],
              )
            ],
          ))),
    );
  }
}
