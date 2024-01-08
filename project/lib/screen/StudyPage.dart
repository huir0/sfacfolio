import 'package:flutter/material.dart';

import 'package:team5/Widget/StudyCollectWidget.dart';
import 'package:team5/Widget/StudyWidget.dart';
import 'package:team5/community/view/tabbar/TabBar.dart';
import 'package:team5/utill/color.dart';

import '../community/view/appbar/AppBar.dart';
import 'bottom_nagivation_bar.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({super.key});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          // appBar: AppBar(
          //   elevation: 0,
          //   title: AppBar(
          //     title: Text(
          //       '커뮤니티',
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
          //     actions: [
          //       Image.asset('assets/Send/Search_4.png'),
          //       Image.asset('assets/Send/Send.png'),
          //       Image.asset('assets/Send/Notification_10.png'),
          //     ],
          //   ),
          // ),
          body: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
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
                height: 540,
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        width: 360,
                        height: 172,
                        child: Image.asset('assets/communitystudy/banner.png'),
                      ),
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
                            Image.asset(
                                'assets/communitystudy/Fire_perspective_matte.png'),
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
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: AppColor.Neutral5)),
                              child: Icon(Icons.filter_list),
                            ),
                            Container(
                              width: 76,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                border: Border.all(color: AppColor.Neutral5),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Row(
                                  children: [
                                    Text(
                                      '최신순',
                                      style: TextStyle(
                                        color: AppColor.Neutral100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      StudyCollectWidget()
                    ],
                  ),
                ),
              ),
              Container(
                height: 64,
                child: BottomNavigationBarComponent(),
              ),
            ],
          ),
        ));
  }
}
