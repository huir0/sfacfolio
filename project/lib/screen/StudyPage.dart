import 'package:flutter/material.dart';

import '/community/view/appbar/AppBar.dart';
import '/community/view/banner/community_banner.dart';
import '/screen/bottom_nagivation_bar.dart';
import '/screen/studyfillter.dart';

import '/widget/StudyCollectWidget.dart';
import '/widget/StudyWidget.dart';

import '../community/view/tabbar/TabBar.dart';
import '../utill/color.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({super.key});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  String _rank = '최신순';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            height: 48,
            width: 360,
            child: CustomAppBarWidget(),
          ),
          Container(
            width: 360,
            height: 40,
            child: CustomTabBar(),
          ),
          Container(
            height: 564,
            color: Colors.white,
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(children: [
                Container(width: 360, height: 200, child: Custom_Banner()),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        '참여자 많은 스터디',
                        style: TextStyle(
                          color: AppColor.Neutral100,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      Image.asset('assets/icons/fire.png'),
                    ],
                  ),
                ),
                StudyWidget(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '스터디 모집',
                        style: TextStyle(
                          color: AppColor.Neutral100,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StudyFilter(),
                      Container(
                        width: 76,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          border: Border.all(color: AppColor.Neutral5),
                        ),
                        child: DropdownButton<String>(
                          underline: SizedBox.shrink(),
                          value: _rank,
                          onChanged: (String? newValue) {
                            setState(() {
                              _rank = newValue!;
                            });
                          },
                          items: <String>['최신순', '저장순', '좋아요순']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value == '최신순'
                                    ? '최신순'
                                    : value == '저장순'
                                        ? '저장순'
                                        : '좋아요순',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                StudyCollectWidget(),
              ]),
            ),
          ),
          SizedBox(height: 64, child: BottomNavigationBarComponent())
        ],
      ),
    );
  }
}
