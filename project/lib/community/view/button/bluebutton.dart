import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 20,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: ShapeDecoration(
          color: Color(0xFFE5EEFF),
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
              color: Color(0xFF0059FF),
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
