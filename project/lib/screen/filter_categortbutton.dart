import 'package:flutter/material.dart';

class Filter_Catagorybutton extends StatefulWidget {
  final String text;
  const Filter_Catagorybutton(this.text);

  @override
  State<Filter_Catagorybutton> createState() => _Filter_Catagorybutton();
}

class _Filter_Catagorybutton extends State<Filter_Catagorybutton> {
  bool activate_but = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activate_but = !activate_but;
        });
      },
      child: Container(
        width: widget.text.length * 12.0 + 16,
        height: 36,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: activate_but ? Color(0xFFF5F8FF) : Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 1,
            color: activate_but ? Color(0xFF0059FF) : Color(0xFFE6E6E6),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Pretendard',
              color: activate_but ? Color(0xFF0059FF) : Color(0xFF000000),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ),
      ),
    );
  }
}
