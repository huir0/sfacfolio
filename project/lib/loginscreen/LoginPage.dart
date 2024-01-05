import 'package:flutter/material.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginPage2State extends State<LoginPage2> {
  String? _errortext;
  String? _errortext2;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Container(
                width: 360,
                height: 740,
                padding: EdgeInsets.fromLTRB(
                  40,
                  60,
                  10,
                  10,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 156,
                      height: 40,
                      child: Image.asset(
                        'assets/images/sfac.png',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 328,
                      height: 90,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '이메일',
                                  style: TextStyle(
                                    color: Color(0xFF030303),
                                    fontSize: 14,
                                  ),
                                ),
                                if (_errortext != null)
                                  Text(
                                    _errortext!,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 10), // 에러 메시지와 TextField 간 간격 조정

                            Container(
                              width: 328,
                              height: 54, // 높이를 40으로 변경
                              child: Stack(
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: _emailController,
                                    onChanged: (value) {
                                      setState(() {
                                        final emailPattern = RegExp(
                                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                        );
                                        if (!emailPattern.hasMatch(value)) {
                                          _errortext = '올바른 아이디를 입력해주세요';
                                        } else {
                                          _errortext = null;
                                        }
                                      });
                                    },
                                    onSubmitted: (value) {
                                      // 이메일 필드로 포커스 이동
                                      FocusScope.of(context).nextFocus();
                                    },
                                    style: TextStyle(
                                      color: _errortext != null
                                          ? Colors.red
                                          : Colors.black,
                                      // 에러 메시지가 있을 때는 빨간색, 없을 때는 검은색으로 설정
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'abcdefg123@gmail.com',
                                      filled: true,
                                      fillColor: _errortext != null
                                          ? Colors.red.withOpacity(0.1)
                                          : Color(0xFFF3F3F3),
                                      hintStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF999999),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 328,
                      height: 90,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '비밀번호',
                                  style: TextStyle(
                                      color: Color(0xFF030303), fontSize: 14),
                                ),
                                if (_errortext2 != null)
                                  Text(_errortext2!,
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12,
                                      )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 328,
                              height: 80,
                              child: Stack(
                                children: [
                                  TextField(
                                    enabled: _errortext != null,
                                    controller: _passwordController,
                                    onChanged: (value) {
                                      setState(() {
                                        if (value.length < 6) {
                                          _errortext2 = '6자 이상으로 입력해주세요';
                                        } else {
                                          _errortext2 = null;
                                        }
                                      });
                                    },
                                    maxLines: 1,
                                    obscureText: _obscureText,
                                    style: TextStyle(
                                      color: _errortext != null
                                          ? Colors.red
                                          : Colors.black,
                                      // 에러 메시지가 있을 때는 빨간색, 없을 때는 검은색으로 설정
                                    ),
                                    decoration: InputDecoration(
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscureText =
                                                !_obscureText; // 상태 토글
                                          });
                                        },
                                        child: Icon(
                                          _obscureText
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                      ),
                                      errorText: _errortext2,
                                      hintText: '6자 이상의 비밀번호',
                                      filled: true,
                                      fillColor: _errortext2 != null
                                          ? Colors.red.withOpacity(0.1)
                                          : Color(0xFFF3F3F3),
                                      hintStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF999999)),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                              fontWeight: FontWeight.w700,
                              height: 0.07,
                              letterSpacing: -0.54,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 120,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Colors.grey)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            '또는',
                            style: TextStyle(
                              color: Color(0xFF6E6E6E),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 120,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage("assets/images/kakao.png"),
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
                          backgroundImage:
                              AssetImage("assets/images/naver.png"),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage("assets/images/apple.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
