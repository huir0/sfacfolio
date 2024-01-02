import 'package:flutter/material.dart';

class filterbutton extends StatefulWidget {
  @override
  _filterbuttonState createState() => _filterbuttonState();
}

class _filterbuttonState extends State<filterbutton> {
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
      width: 70,
      height: 36,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isButtonPressed = !isButtonPressed;
          });
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: isButtonPressed ? Color(0xFFF5F8FF) : Color(0xFFF8F8F9),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 5,
              color: isButtonPressed ? Color(0xFF0059FF) : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                '개발자',
                style: TextStyle(
                    color:
                        isButtonPressed ? Color(0xFF0059FF) : Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
