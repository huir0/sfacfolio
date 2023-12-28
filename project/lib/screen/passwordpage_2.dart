import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Passwordpage_2 extends StatefulWidget {
  const Passwordpage_2({super.key});

  @override
  PasswordPage_2 createState() => PasswordPage_2();
}

class PasswordPage_2 extends State<Passwordpage_2> {
  late String new_pass;
  String message_1 = '';
  String message_2 = '';
  Color back_color_1 = Colors.white;
  Color back_color_2 = Colors.white;
  Color message_color_1 = Colors.white;
  Color message_color_2 = Colors.white;
  Color next_button_back = Colors.white;
  Color next_button_text = Colors.white;
  bool input_1 = false;
  bool input_2 = false;
  TextEditingController input_check = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  bool Check_validate(String password) {
    final RegExp regex = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d|.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{10,16}$',
    );
    return regex.hasMatch(password);
  }

  void Next_Color() {
    if (input_1 && input_2) {
      next_button_back = Color(0xFF0059FF);
      next_button_text = Color(0xFFFFFFFF);
    } else {
      next_button_back = Color(0xFFF3F3F3);
      next_button_text = Color(0xFF999999);
    }
  }

  List<Color> Color_Change(String input_state) {
    List<Color> colors = [];
    if (input_state == 'false') {
      colors.add(Color(0xFFFFEEEE));
      colors.add(Color(0xFFFF0000));
    } else if (input_state == 'true') {
      colors.add(Color(0xFFE8FDEB));
      colors.add(Color(0xFF07A320));
    } else if (input_state == 'nomal') {
      colors.add(Color(0xFFF3F3F3));
      colors.add(Color(0xFF000000));
    }
    return colors;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '새 비밀번호',
                          style:
                              TextStyle(color: Color(0xFF030303), fontSize: 14),
                        ),
                        Text(
                          message_1,
                          style:
                              TextStyle(fontSize: 12, color: message_color_1),
                        )
                      ],
                    ),
                    Container(
                      width: 328,
                      height: 48,
                      child: TextField(
                        obscureText: true,
                        onChanged: (text) {
                          String input_state;
                          setState(() {
                            input_check.text = '';
                            input_2 = false;
                            List<Color> reset_colors = Color_Change('nomal');
                            back_color_2 = reset_colors[0];
                            message_color_2 = reset_colors[1];
                            message_2 = '';
                            if (text.length == 0) {
                              input_state = 'nomal';
                              message_1 = '';
                              input_1 = false;
                            } else if (!Check_validate(text)) {
                              input_state = 'false';
                              message_1 = '잘못된 비밀번호 입니다. 다시 입력해주세요.';
                              input_1 = false;
                            } else {
                              new_pass = text;
                              input_state = 'true';
                              message_1 = '올바른 비밀번호 입니다.';
                              input_1 = true;
                            }
                            List<Color> colors = Color_Change(input_state);
                            back_color_1 = colors[0];
                            message_color_1 = colors[1];
                            Next_Color();
                          });
                        },
                        maxLines: 1,
                        style: TextStyle(color: message_color_1),
                        decoration: InputDecoration(
                          hintText: '새 비밀번호',
                          filled: true,
                          fillColor: back_color_1,
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
              Container(
                width: 328,
                height: 15,
                child: Text(
                  '(영문 대소문자 / 숫자 / 특수문자 등 2가지 이상 조합 10자~16자)',
                  style: TextStyle(fontSize: 12, color: Color(0xFF999999)),
                  textAlign: TextAlign.left,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '새 비밀번호',
                          style:
                              TextStyle(color: Color(0xFF030303), fontSize: 14),
                        ),
                        Text(
                          message_2,
                          style:
                              TextStyle(fontSize: 12, color: message_color_2),
                        ),
                      ],
                    ),
                    Container(
                      width: 328,
                      height: 48,
                      child: TextField(
                        obscureText: true,
                        controller: input_check,
                        onChanged: (text) {
                          String input_state;
                          setState(
                            () {
                              if (text.length == 0) {
                                input_state = 'nomal';
                                message_2 = '';
                                input_2 = false;
                              } else if (text == new_pass) {
                                input_state = 'true';
                                message_2 = '새 비밀번호와 일치합니다.';
                                input_2 = true;
                              } else {
                                input_state = 'false';
                                message_2 = '비밀번호가 일치하지 않습니다.';
                                input_2 = false;
                              }
                              List<Color> colors = Color_Change(input_state);
                              back_color_2 = colors[0];
                              message_color_2 = colors[1];
                              Next_Color();
                            },
                          );
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: '새 비밀번호 확인',
                          filled: true,
                          fillColor: back_color_2,
                          hintStyle: const TextStyle(
                              fontSize: 16, color: Color(0xFF999999)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                        ),
                        style: TextStyle(
                          color: message_color_2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 334,
              ),
              Container(
                width: 328,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: next_button_back,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    if (input_1 && input_2) {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Passwordpage_2()));
                    }
                  },
                  child: Center(
                    child: Text(
                      '다음',
                      style: TextStyle(color: next_button_text, fontSize: 18),
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
