// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:project/Login/Controllerclass.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: 360,
            height: 740,
            padding: EdgeInsets.fromLTRB(
              20,
              120,
              20,
              10,
            ),
            child: Container(
              width: 328,
              height: 546,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 156,
                    child: Image.asset('assets/images/sfac.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '이메일',
                          style: TextStyle(
                              color: Color(0xFF020202),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0.07),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: 'abcdfg@gmail,com'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '비밀번호',
                          style: TextStyle(
                              color: Color(0xFF020202),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0.07),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (Form.of(context)!.validate()) {}
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0059FF), // 색상을 #337AFF로 지정
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // 반경 10px
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10.0, right: 50.0, bottom: 10.0, left: 50.0),
                      width: 370.0,
                      height: 56.0,
                      alignment: Alignment.center,
                      child: Text('로그인',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF), // 텍스트 색상을 #FFFFFF로 지정
                            fontSize: 18.0,
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text(
                          '회원가입',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text(
                          '아이디찾기',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text(
                          '비밀번호찾기',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/kakao.png"),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          "assets/images/google.jpeg",
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/naver.png"),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/apple.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
