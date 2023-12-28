import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team5/screen/passwordpage_2.dart';

class Passwordpage_1 extends StatefulWidget {
  const Passwordpage_1({super.key});

  @override
  PasswordPage_1 createState() => PasswordPage_1();
}

class PasswordPage_1 extends State<Passwordpage_1> {
  Map<String, Color> button_back_colors = {};
  Map<String, Color?> button_side_colors = {};
  bool next_state_1 = false;
  bool next_state_2 = false;
  bool next_state_3 = false;
  bool next_state_4 = false;
  bool next_result = false;

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 4; i++) {
      button_back_colors['button_${i}'] = Color(0xFFF8F8F8);
      button_side_colors['button_${i}'] = Color(0xFFF8F8F8);
    }
  }

  bool Next_Check(List<bool> boollist) {
    print('----------------------------------');
    for (bool elem in boollist) {
      print(elem);
    }
    print('----------------------------------');
    return boollist.every((element) => element == true);
  }

  void Button_Color_Change(int button_num) {
    setState(() {
      for (String button in button_back_colors.keys) {
        button_back_colors[button] = Color(0xFFF8F8F8);
        button_side_colors[button] = Color(0xFFF8F8F8);
      }
      button_back_colors['button_${button_num}'] = Color(0xFFF5F8FF);
      button_side_colors['button_${button_num}'] = Color(0xFF0059FF);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 48,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 30,
                margin: EdgeInsets.only(bottom: 50),
                child: const Center(
                  child: Text(
                    '비밀번호 찾기',
                    style: TextStyle(
                        color: Color(0xFF030303),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 328,
                height: 74,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '이름',
                      style: TextStyle(color: Color(0xFF030303), fontSize: 14),
                    ),
                    Container(
                      width: 328,
                      height: 48,
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: '이름',
                          filled: true,
                          fillColor: Color(0xFFF3F3F3),
                          hintStyle: const TextStyle(
                              fontSize: 16, color: Color(0xFF999999)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 328,
                height: 74,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '아이디',
                      style: TextStyle(color: Color(0xFF030303), fontSize: 14),
                    ),
                    Container(
                      width: 328,
                      height: 48,
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: '이메일 (아이디)',
                          filled: true,
                          fillColor: Color(0xFFF3F3F3),
                          hintStyle: const TextStyle(
                              fontSize: 16, color: Color(0xFF999999)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 328,
                height: 74,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '휴대폰 인증',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(1);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_1'],
                                  side: BorderSide(
                                      color: button_side_colors['button_1'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  'SKT',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(2);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_2'],
                                  side: BorderSide(
                                      color: button_side_colors['button_2'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  'KT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(3);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_3'],
                                  side: BorderSide(
                                      color: button_side_colors['button_3'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  'LG U+',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(4);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_4'],
                                  side: BorderSide(
                                      color: button_side_colors['button_4'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  '알뜰폰',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ]),
                    ]),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 328,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        width: 244,
                        height: 48,
                        margin: EdgeInsets.only(right: 5),
                        child: TextField(
                          maxLines: 1,
                          onChanged: (text) {
                            setState(() {
                              if (text.length == 10 || text.length == 11) {
                                next_state_2 = true;
                              } else {
                                next_state_2 = false;
                              }
                            });
                          },
                          decoration: InputDecoration(
                            hintText: '휴대폰 번호 인증',
                            filled: true,
                            fillColor: Color(0xFFF3F3F3),
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Color(0xFF999999)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height,
                      child: ElevatedButton(
                        onPressed: () {
                          if (next_state_2) {
                            next_state_3 = true;
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: next_state_2
                              ? Color(0xFF0059FF)
                              : Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Container(
                          width: 76,
                          height: 48,
                          child: Center(
                            child: Text(
                              '인증요청',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: next_state_2
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF999999),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 328,
                height: 48,
                child: Center(
                  child: TextField(
                    maxLines: 1,
                    onChanged: (text) {
                      next_state_4 = true;
                      setState(() {
                        next_result = Next_Check([
                          next_state_1,
                          next_state_2,
                          next_state_3,
                          next_state_4
                        ]);
                        print('---------------------------------');
                        print(next_result);
                        print('---------------------------------');
                      });
                    },
                    decoration: InputDecoration(
                      hintText: '인증번호 입력',
                      filled: true,
                      fillColor: Color(0xFFF3F3F3),
                      hintStyle: const TextStyle(
                          fontSize: 16, color: Color(0xFF999999)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 132,
              ),
              Container(
                width: 328,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor:
                        next_result ? Color(0xFF0059FF) : Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    if (next_result) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Passwordpage_2()));
                    }
                  },
                  child: Center(
                    child: Text(
                      '다음',
                      style: TextStyle(
                          color: next_result
                              ? Color(0xFFFFFFFF)
                              : Color(0xFF999999),
                          fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
