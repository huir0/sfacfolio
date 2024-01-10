import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:team5/screen/FindokLoginPage.dart';
import 'package:team5/utill/color.dart';


class FindLoginPage extends StatefulWidget {
  const FindLoginPage({super.key});

  @override
  State<FindLoginPage> createState() => _FindLoginPageState();
}

//

//인증요청
class _FindLoginPageState extends State<FindLoginPage> {
  bool? isVerificationCodeValid;
  // bool isVerificationCodeValid = false;

  Color TextFiledColor(bool? isVerificationCodeValid) {
    if (isVerificationCodeValid == true) {
      return Colors.green;
    } else if (isVerificationCodeValid == false) {
      return Colors.red;
    } else {
      return Color(0xFFFFEEEE);
    }
  }

  String verificationButtonText = '인증요청';

  void changeVerificationButtonText() {
    setState(() {
      if (verificationButtonText == '인증요청') {
        verificationButtonText = '재인증';
      } else {
        verificationButtonText = '인증요청';
      }
    });
  }

  //통신사 버튼
  Color _sktButtonColor = AppColor.Neutral5;
  Color _ktButtonColor = AppColor.Neutral5;
  Color _lgUPlusButtonColor = AppColor.Neutral5;
  Color _aldeulButtonColor = AppColor.Neutral5;

  void _onSKTButtonClicked() {
    setState(() {
      _sktButtonColor = AppColor.Primary100;
      _ktButtonColor = AppColor.Neutral5;
      _lgUPlusButtonColor = AppColor.Neutral5;
      _aldeulButtonColor = AppColor.Neutral5;
    });
  }

  void _onKTButtonClicked() {
    setState(() {
      _sktButtonColor = AppColor.Neutral5;
      _ktButtonColor = AppColor.Primary100;
      _lgUPlusButtonColor = AppColor.Neutral5;
      _aldeulButtonColor = AppColor.Neutral5;
    });
  }

  void _onLGUPlusButtonClicked() {
    setState(() {
      _sktButtonColor = AppColor.Neutral5;
      _ktButtonColor = AppColor.Neutral5;
      _lgUPlusButtonColor = AppColor.Primary100;
      _aldeulButtonColor = AppColor.Neutral5;
    });
  }

  void _onAldeulButtonClicked() {
    setState(() {
      _sktButtonColor = AppColor.Neutral5;
      _ktButtonColor = AppColor.Neutral5;
      _lgUPlusButtonColor = AppColor.Neutral5;
      _aldeulButtonColor = AppColor.Primary100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.close))]),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                children: [
                  Center(
                      child: Text('아이디 찾기',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColor.Neutral100))),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        '이름',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 328,
                    height: 48,
                    child: TextField(
                        decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColor.Neutral5,
                      hintText: '이메일 (아이디)',
                      hintStyle: TextStyle(color: AppColor.Neutral100),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        '휴대폰 인증',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 76,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: _sktButtonColor, width: 1),
                        ),
                        child: OutlinedButton(
                          onPressed: _onSKTButtonClicked,
                          child: Text(
                            'SKT',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.Neutral100,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 76,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: _ktButtonColor, width: 1),
                        ),
                        child: OutlinedButton(
                          onPressed: _onKTButtonClicked,
                          child: Text(
                            'KT',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.Neutral100,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 76,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: _lgUPlusButtonColor, width: 1),
                        ),
                        child: OutlinedButton(
                          onPressed: _onLGUPlusButtonClicked,
                          child: Text(
                            'LG U+',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.Neutral100,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 76,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: _aldeulButtonColor, width: 1),
                        ),
                        child: OutlinedButton(
                          onPressed: _onAldeulButtonClicked,
                          child: Text(
                            '알뜰폰',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.Neutral100,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 244,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColor.Neutral5,
                            hintText: '휴대폰 번호 인증',
                            hintStyle: TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 76,
                        height: 48,
                        child: TextButton(
                            onPressed: () {
                              changeVerificationButtonText();
                            },
                            child: Text(
                              verificationButtonText,
                              style: TextStyle(
                                color: AppColor.White,
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  AppColor.Primary100,
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0))))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 328,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: isVerificationCodeValid == true
                            ? Color(0xFFE8FDEB)
                            : (isVerificationCodeValid == false
                                ? Color(0xFFFFEEEE)
                                : AppColor.Neutral5),
                        hintText: '인증번호 입력',
                        errorText: isVerificationCodeValid == false
                            ? '잘못된 인증번호 입니다. 다시 인증해주세요'
                            : null,
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      style: TextStyle(
                        color: isVerificationCodeValid == null
                            ? Colors.black
                            : (isVerificationCodeValid == true
                                ? Colors.green
                                : Colors.red),
                      ),
                      onChanged: (value) {
                        setState(() {
                          if (value == '12345') {
                            isVerificationCodeValid = true;
                          } else {
                            isVerificationCodeValid = false;
                          }
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      isVerificationCodeValid == true
                          ? Text(
                              '인증되었습니다.',
                              style: TextStyle(color: Colors.green),
                            )
                          : SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 175,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          elevation: 0,
                          backgroundColor: AppColor.Primary100),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FindokLoginPage()),
                        );
                      },
                      child: Text(
                        '다음',
                        style: TextStyle(
                            color: AppColor.White,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
