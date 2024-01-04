import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatefulWidget {
  const CustomAppBarWidget({super.key});

  @override
  State<CustomAppBarWidget> createState() => _CustomAppBarWidgetState();
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
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
