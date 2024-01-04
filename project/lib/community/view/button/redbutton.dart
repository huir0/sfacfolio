import 'package:flutter/material.dart';

class RedButton extends StatefulWidget {
  @override
  _RedButtonState createState() => _RedButtonState();
}

class _RedButtonState extends State<RedButton> {
  bool isButtonPressed = false;

  void onButtonPressed() {
    setState(() {
      isButtonPressed = !isButtonPressed;
    });
    // 버튼이 눌릴 때 수행할 작업 추가
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 20,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: ShapeDecoration(
          color: Color(0xFFFFE5E5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(75),
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'd-4',
            style: TextStyle(
              color: Color(0xFFFF0000),
              fontSize: 10,
              fontFamily: 'Prtendard',
              fontWeight: FontWeight.w400,
              height: 0.15,
            ),
          ),
        ],
      ),
    );
  }
}
