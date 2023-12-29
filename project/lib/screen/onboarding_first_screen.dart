import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screen/onboarding_controller.dart';

class OnBoardingFirstPage extends StatefulWidget {
  const OnBoardingFirstPage({super.key});

  @override
  State<OnBoardingFirstPage> createState() => _OnBoardingFirstPageState();
}

class _OnBoardingFirstPageState extends State<OnBoardingFirstPage> {
  int progressPage = 1;

  String userName = '';

  Color progressBar = Color(0xff337AFF);
  Color textFormFieldFontColor = const Color(0xff999999);
  Color textFormFieldColor = const Color(0xfff8f8f9);
  Color buttonBorderColor = const Color(0xff0059ff);
  Color buttonSelectedColor = const Color(0xfff5f8ff);
  Color buttonNormalColor = Color(0xfff8f8f9);
  Color buttonColor = const Color(0xff0059ff);

  final _onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        leading: Container(
          // FIXME: 뭔가 이상하긴한데.. 나중에 고쳐야할 것
          margin: EdgeInsets.only(
            left: 16,
            right: 8,
          ),
          height: 24,
          width: 24,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 11.5,
            ),
          ),
        ),
        title: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: LinearProgressIndicator(
            minHeight: 8,
            borderRadius: BorderRadius.circular(5),
            color: progressBar,
            value: progressPage / 4,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(0, 0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: progressPage.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: ' / 4',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              '$userName님 환영합니다!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 36,
              child: Text(
                '성별과 출생년도를 설정하면\n비슷한 사람들의 포트폴리오와 채용공고를 볼 수 있어요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 328,
              height: 187,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '성별',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer('남성'),
                      buildContainer('여성'),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '생년월일',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    ),
                  ),
                  TextFormField(
                    controller: _onBoardingController.birthdayController,
                    keyboardType: TextInputType.number,
                    onTap: () {
                      _onBoardingController.birthdayController
                          .clear(); // 텍스트 필드를 클릭하면 텍스트를 초기화함
                    },
                    onChanged: (val) {
                      if (val.length == 6) {
                        FocusScope.of(context).unfocus();
                        _onBoardingController.birthdayController.text =
                            _onBoardingController.formattedBirthday;
                        _onBoardingController.birthdayController.selection =
                            TextSelection.fromPosition(
                          TextPosition(
                              offset: _onBoardingController
                                  .birthdayController.text.length),
                        );
                      }
                    },
                    textAlign: TextAlign.center,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '필수 입력 칸입니다.';
                      }
                      if (value.length != 6 && value.length != 11) {
                        return '6자리를 입력해주세요.';
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
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                        color: textFormFieldFontColor,
                      ),
                      hintText: 'ex. 990101',
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  OnBoardingFirstPage(), // FIXME: 다음 페이지로 연결
                  arguments: OnBoardingController(),
                );
              },
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return FittedBox(
                    child: Text(
                      '다음',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
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
      )),
    );
  }

  Widget buildContainer(String text) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _onBoardingController.saveSex(text);
        },
        child: Container(
          width: 160,
          height: 48,
          margin: const EdgeInsets.only(bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
                color: _onBoardingController.sex == text
                    ? buttonBorderColor
                    : const Color(0x03000000)),
            color: _onBoardingController.sex == text
                ? buttonSelectedColor
                : buttonNormalColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: _onBoardingController.sex == text
                    ? buttonBorderColor
                    : textFormFieldFontColor),
          ),
        ),
      ),
    );
  }
}
