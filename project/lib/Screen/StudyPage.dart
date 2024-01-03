import 'package:flutter/material.dart';
import 'package:project/Card/TabBar.dart';

import 'package:project/utill/color.dart';

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
          appBar: AppBar(
            elevation: 0,
            title: AppBar(
              title: Text(
                '커뮤니티',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_sharp),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                CustomTabBar(),
                Container(
                  width: 360,
                  height: 172,
                  child: Image.asset('assets/communitystudy/banner.png'),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '참여자 많은 스터디',
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
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 116,
                                    height: 108,
                                    decoration: BoxDecoration(
                                        color: AppColor.Primary10,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Positioned(
                                    top: 30,
                                    left: -6,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (1).png',
                                    )),
                                Positioned(
                                    left: 45,
                                    top: -10,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (3).png',
                                    )),
                                Positioned(
                                    bottom: -9,
                                    left: 20,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (5).png')),
                                Positioned(
                                    right: 1,
                                    bottom: -8,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (4).png')),
                                Positioned(
                                    right: -12,
                                    bottom: 56,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (2).png')),
                                Positioned(
                                    right: 45,
                                    top: 60,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.White,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '모집중',
                                          style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontFamily: 'Pretendard',
                                              fontSize: 10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  right: 0,
                                  bottom: -30,
                                  child: Container(
                                    width: 156,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColor.Primary5)),
                                    child: Text(
                                      'UX/UI 마스터',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Neutral100,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 116,
                                    height: 108,
                                    decoration: BoxDecoration(
                                        color: AppColor.Primary10,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Positioned(
                                    top: 30,
                                    left: -6,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_Small (16).png',
                                    )),
                                Positioned(
                                    left: 45,
                                    top: -10,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_Small (23).png',
                                    )),
                                Positioned(
                                    bottom: -9,
                                    left: 20,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_Small (14).png')),
                                Positioned(
                                    right: 1,
                                    bottom: -8,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (4).png')),
                                Positioned(
                                    right: -12,
                                    bottom: 56,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_Small (18).png')),
                                Positioned(
                                    right: 45,
                                    top: 60,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.White,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '모집중',
                                          style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontFamily: 'Pretendard',
                                              fontSize: 10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  right: 0,
                                  bottom: -30,
                                  child: Container(
                                    width: 156,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColor.Primary5)),
                                    child: Text(
                                      '미라클 모닝 스터디',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Neutral100,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 116,
                                    height: 108,
                                    decoration: BoxDecoration(
                                        color: AppColor.Primary10,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Positioned(
                                    top: 30,
                                    left: -6,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_Small (16).png',
                                    )),
                                Positioned(
                                    left: 45,
                                    top: -10,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_Small (23).png',
                                    )),
                                Positioned(
                                    bottom: -9,
                                    left: 20,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_Small (14).png')),
                                Positioned(
                                    right: 1,
                                    bottom: -8,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (4).png')),
                                Positioned(
                                    right: -12,
                                    bottom: 56,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_Small (18).png')),
                                Positioned(
                                    right: 45,
                                    top: 60,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.White,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '모집중',
                                          style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontFamily: 'Pretendard',
                                              fontSize: 10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  right: 0,
                                  bottom: -30,
                                  child: Container(
                                    width: 156,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColor.Primary5)),
                                    child: Text(
                                      'JAVA 한달 끝내기',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Neutral100,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 116,
                                    height: 108,
                                    decoration: BoxDecoration(
                                        color: AppColor.Primary10,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Positioned(
                                    top: 30,
                                    left: -6,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (1).png',
                                    )),
                                Positioned(
                                    left: 45,
                                    top: -10,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (3).png',
                                    )),
                                Positioned(
                                    bottom: -9,
                                    left: 20,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (5).png')),
                                Positioned(
                                    right: 1,
                                    bottom: -8,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (4).png')),
                                Positioned(
                                    right: -12,
                                    bottom: 56,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (2).png')),
                                Positioned(
                                    right: 45,
                                    top: 60,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.White,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '모집중',
                                          style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontFamily: 'Pretendard',
                                              fontSize: 10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  right: 0,
                                  bottom: -30,
                                  child: Container(
                                    width: 156,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColor.Primary5)),
                                    child: Text(
                                      '어도비 맛보기',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Neutral100,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 116,
                                    height: 108,
                                    decoration: BoxDecoration(
                                        color: AppColor.Primary10,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Positioned(
                                    top: 30,
                                    left: -6,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (1).png',
                                    )),
                                Positioned(
                                    left: 45,
                                    top: -10,
                                    child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (3).png',
                                    )),
                                Positioned(
                                    bottom: -9,
                                    left: 20,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (5).png')),
                                Positioned(
                                    right: 1,
                                    bottom: -8,
                                    child: Image.asset(
                                        'assets/communitystudy/Profile_BIg (4).png')),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Positioned(
                                      right: -12,
                                      bottom: 56,
                                      child: Image.asset(
                                          'assets/communitystudy/Profile_BIg (2).png')),
                                ),
                                Positioned(
                                    right: 45,
                                    top: 60,
                                    child: Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.White,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '모집중',
                                          style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontFamily: 'Pretendard',
                                              fontSize: 10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  right: 0,
                                  bottom: -30,
                                  child: Container(
                                    width: 156,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColor.Primary5)),
                                    child: Text(
                                      '개발자가 되어보자',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Neutral100,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '스터디 모집',
                            style: TextStyle(
                                color: AppColor.Neutral100,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(224, 71, 97, 192)),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 328,
                            height: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color.fromARGB(224, 54, 56, 64)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 328,
                            height: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColor.Primary5),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 328,
                            height: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColor.Primary5),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
