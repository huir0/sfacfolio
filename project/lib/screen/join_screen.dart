import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:project/screen/welcome_screen.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({super.key});

  @override
  State<JoinPage> createState() => _JoinPageMainState();
}

class _JoinPageMainState extends State<JoinPage> {
  String selectedText = '';
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final mobileController = TextEditingController();

  // TODO: 만들어두고 아직 제대로 활용 안했음
  final nameFocusnode = FocusNode();
  final nicknameFocusnode = FocusNode();
  final emailFocusnode = FocusNode();
  final passwordFocusnode = FocusNode();
  final confirmPasswordFocusnode = FocusNode();
  final mobileFocusnode = FocusNode();

  String errorMessage = '';
  bool _allSelected = false;
  bool isMobileButtonEnabled = false;
  List<bool> _selected = List.generate(4, (_) => false);
  String groupValue = '';

  Color textFormFieldFontColor = const Color(0xff999999);
  Color textFormFieldColor = const Color(0xfff3f3f3);
  Color buttonBorderColor = const Color(0xff0059ff);
  Color buttonFontColor = const Color(0xfff5f8ff);
  Color buttonColor = const Color(0xff0059ff);

  @override
  void dispose() {
    nameController.dispose();
    nicknameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    mobileController.dispose();

    nameFocusnode.dispose();
    nicknameFocusnode.dispose();
    emailFocusnode.dispose();
    passwordFocusnode.dispose();
    confirmPasswordFocusnode.dispose();
    mobileFocusnode.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    mobileController.addListener(() {
      setState(() {
        // 입력이 숫자로만 이루어진 11자리인 경우에만 버튼 활성화
        isMobileButtonEnabled = mobileController.text.length == 11 &&
            int.tryParse(mobileController.text) != null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // x 버튼
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // 회원가입 안내 문구
                const Text(
                  '회원가입',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                // 이름 입력 인풋창
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '이름',
                    style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
                  width: double.infinity,
                  child: TextFormField(
                    controller: nameController,
                    focusNode: nameFocusnode,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '필수 입력 칸입니다.';
                      }
                      return null;
                    },
                    cursorColor: textFormFieldFontColor,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFormFieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusColor: textFormFieldFontColor,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: '이름 입력',
                    ),
                  ),
                ),
                // 닉네임 입력 인풋창
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('닉네임'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
                  width: double.infinity,
                  child: TextFormField(
                    controller: nicknameController,
                    focusNode: nicknameFocusnode,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '필수 입력 칸입니다.';
                      }
                      return null;
                    },
                    cursorColor: textFormFieldFontColor,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFormFieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusColor: textFormFieldFontColor,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      hintStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      hintText: '닉네임 입력',
                    ),
                  ),
                ),
                // 이메일 입력 인풋창
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('이메일'),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
                  width: double.infinity,
                  child: TextFormField(
                    controller: emailController,
                    focusNode: emailFocusnode,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '필수 입력 칸입니다.';
                      }
                      return null;
                    },
                    cursorColor: textFormFieldFontColor,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFormFieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusColor: textFormFieldFontColor,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      hintStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      hintText: '이메일 입력',
                    ),
                  ),
                ),
                // 비밀번호 입력 인풋창
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('비밀번호'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
                  width: double.infinity,
                  child: TextFormField(
                    controller: passwordController,
                    focusNode: passwordFocusnode,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '필수 입력 칸입니다.';
                      }
                      return null;
                    },
                    obscureText: true,
                    cursorColor: textFormFieldFontColor,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: textFormFieldColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        focusColor: textFormFieldFontColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        hintStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                        hintText: '비밀번호'),
                  ),
                ),
                // 비밀번호 확인 입력 인풋창
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('비밀번호 확인'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
                  width: double.infinity,
                  child: TextFormField(
                    controller: confirmPasswordController,
                    focusNode: confirmPasswordFocusnode,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '필수 입력 칸입니다.';
                      }
                      return null;
                    },
                    obscureText: true,
                    cursorColor: textFormFieldFontColor,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: textFormFieldColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        focusColor: textFormFieldFontColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        hintStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                        hintText: '비밀번호 재입력',
                        errorText: errorMessage.isEmpty ? null : errorMessage),
                    onChanged: (value) {
                      setState(() {
                        if (value != passwordController.text) {
                          errorMessage = '비밀번호가 일치하지 않습니다.';
                        } else {
                          errorMessage = '';
                        }
                      });
                    },
                  ),
                ),

                // 휴대폰 인증 - 통신사 선택
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('휴대폰 인증'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer('SKT'),
                    buildContainer('KT'),
                    buildContainer('LG U+'),
                    buildContainer('알뜰폰'),
                  ],
                ),
                // 휴대폰 번호 입력 인풋창
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: mobileController,
                        focusNode: mobileFocusnode,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '필수 입력 칸입니다.';
                          }
                          return null;
                        },
                        cursorColor: textFormFieldFontColor,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textFormFieldColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide.none,
                          ),
                          focusColor: textFormFieldFontColor,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                          hintText: '휴대폰 번호 인증',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: isMobileButtonEnabled ? () {} : null,
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0.8),
                            foregroundColor: Colors.white,
                            backgroundColor: buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            elevation: 0,
                            minimumSize: const Size(76, 48)),
                        child: Text(
                          '인증요청',
                          style: TextStyle(
                              fontSize: 16,
                              color: buttonFontColor,
                              letterSpacing: -0.48),
                        ),
                      ),
                    ),
                  ],
                ),
                // 인증번호 입력
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 24),
                  width: double.infinity,
                  child: TextFormField(
                    cursorColor: textFormFieldFontColor,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFormFieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusColor: textFormFieldFontColor,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      hintStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      hintText: '인증번호 입력',
                    ),
                  ),
                ),
                // 약관동의 라디오버튼
                GFCheckboxListTile(
                  padding: const EdgeInsets.all(0.6),
                  title: const Text('본인인증 약관 전체동의(필수)'),
                  value: _allSelected,
                  onChanged: (value) {
                    setState(() {
                      _allSelected = value;
                      _selected = List.generate(4, (_) => _allSelected);
                    });
                  },
                  position: GFPosition.start,
                  size: 20,
                  type: GFCheckboxType.circle,
                ),
                GFCheckboxListTile(
                  padding: const EdgeInsets.all(0.6),
                  title: const Text('개인정보 수집 이용 동의'),
                  value: _selected[0],
                  onChanged: (value) {
                    setState(() {
                      _selected[0] = value;
                    });
                  },
                  position: GFPosition.start,
                  size: 20,
                  type: GFCheckboxType.circle,
                ),
                GFCheckboxListTile(
                  padding: const EdgeInsets.all(0.6),
                  title: const Text('고유식별 정보처리 동의'),
                  value: _selected[1],
                  onChanged: (value) {
                    setState(() {
                      _selected[1] = value;
                    });
                  },
                  position: GFPosition.start,
                  size: 20,
                  type: GFCheckboxType.circle,
                ),
                GFCheckboxListTile(
                  padding: const EdgeInsets.all(0.6),
                  title: const Text('통신사 이용약관 동의'),
                  value: _selected[2],
                  onChanged: (value) {
                    setState(() {
                      _selected[2] = value;
                    });
                  },
                  position: GFPosition.start,
                  size: 20,
                  type: GFCheckboxType.circle,
                ),
                GFCheckboxListTile(
                  padding: const EdgeInsets.all(0.6),
                  title: const Text('서비스 이용약관 동의'),
                  value: _selected[3],
                  onChanged: (value) {
                    setState(() {
                      _selected[3] = value;
                    });
                  },
                  position: GFPosition.start,
                  size: 20,
                  type: GFCheckboxType.circle,
                ),
                const SizedBox(
                  height: 10,
                ),
                // 다음 버튼
                ElevatedButton(
                  onPressed: (_selected.every((bool val) => val) &&
                          !nameController.text.isEmpty &&
                          !emailController.text.isEmpty &&
                          !nicknameController.text.isEmpty &&
                          !passwordController.text.isEmpty &&
                          !confirmPasswordController.text.isEmpty &&
                          !mobileController.text.isEmpty)
                      ? () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WelcomePage()));
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.grey;
                        }
                        return buttonColor;
                      },
                    ),
                    side: MaterialStateProperty.resolveWith<BorderSide>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return const BorderSide(color: Colors.grey);
                        }
                        return BorderSide(color: buttonColor);
                      },
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: buttonColor),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width, 50)),
                  ),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '다음',
                          style: TextStyle(
                              color: buttonFontColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 22 / 18,
                              letterSpacing: -0.03),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 통신사 선택 위젯
  Widget buildContainer(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedText = text;
        });
      },
      child: Container(
        width: 76,
        height: 48,
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
              color: selectedText == text
                  ? buttonBorderColor
                  : const Color(0x03000000)),
          color: selectedText == text ? buttonFontColor : Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              color: selectedText == text ? buttonBorderColor : Colors.black),
        ),
      ),
    );
  }
}
