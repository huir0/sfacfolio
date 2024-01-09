import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team5/community/view/appbar/AppBar.dart';
import 'package:team5/screen/studyfillter.dart';

import 'package:team5/widget/StudyCollectWidget.dart';
import 'package:team5/widget/StudyWidget.dart';
import 'package:team5/community/view/banner/community_banner.dart';
import 'package:team5/community/view/tabbar/TabBar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/utill/color.dart';

import '../community/view/appbar/AppBar.dart';
import 'bottom_nagivation_bar.dart';

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
        appBar: AppBar(elevation: 0, title: CustomAppBarWidget()),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              title: CustomTabBar(),
            ),
          ],
          body: SingleChildScrollView(
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
                        child: Container(
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
                                  style: TextStyle(fontSize: 12),
                                ),
                              );
                            }).toList(),
                          ),
                        )),
                  ],
                ),
              ),
              StudyCollectWidget(),
              BottomNavigationBarComponent()
            ]),
=======
  final List<String> carouselItems = [
    'assets/images/community/noticeboard/banner_1.png',
    'assets/images/community/noticeboard/banner_2.png',
    'assets/images/community/noticeboard/banner_3.png',
    'assets/images/community/noticeboard/banner_4.png',
    'assets/images/community/noticeboard/banner_5.png',
    'assets/images/community/noticeboard/banner_6.png'
  ];

  int currentIndex = 0;

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
                height: 564,
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: Stack(
                          children: [
                            CarouselSlider(
                              items: carouselItems
                                  .map((image) => Image.asset(image))
                                  .toList(),
                              options: CarouselOptions(
                                height: 200,
                                autoPlay: true,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 4),
                              alignment: Alignment.bottomCenter,
                              child: DotsIndicator(
                                dotsCount: carouselItems.length,
                                position: currentIndex,
                                decorator: const DotsDecorator(
                                    size: Size.square(4),
                                    activeSize: Size.square(4),
                                    activeColor: Colors.white,
                                    spacing: EdgeInsets.all(2)),
                              ),
                            )
                          ],
                        ),
                      ), // 배너 클래스
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
                            Image.asset('assets/images/fire.png'),
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
