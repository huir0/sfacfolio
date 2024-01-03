import 'package:flutter/material.dart';
import 'package:project/utill/color.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TabBar(
        indicatorColor: AppColor.Primary100,
        labelPadding: EdgeInsets.symmetric(horizontal: 5),
        labelStyle: TextStyle(
          color: AppColor.Primary100,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        tabs: [
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '게시판',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '프로젝트',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '스터디',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '채용공고',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
