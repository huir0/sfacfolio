import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 28,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '커뮤니티',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: 158,
          ),
          Container(
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.airplane_ticket),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.blender_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
