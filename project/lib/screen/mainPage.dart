import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team5/utill/color.dart';

import 'bottom_nagivation_bar.dart';

// image 사이즈 안맞아서 교체 필요

final List<String> carouselItems = [
  'assets/images/community/noticeboard/banner_1.png',
  'assets/images/community/noticeboard/banner_2.png',
  'assets/images/community/noticeboard/banner_3.png',
  'assets/images/community/noticeboard/banner_4.png',
  'assets/images/community/noticeboard/banner_5.png',
  'assets/images/community/noticeboard/banner_6.png',
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 360,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 16,
                    child: Image.asset('assets/images/sfac.png'),
                  ),
                  SizedBox(width: 12.6,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '스팩로그',
                        style: TextStyle(
                          color: AppColor.Neutral30,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                    'assets/images/Search.svg')),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset('assets/images/Chat.svg')),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset('assets/images/Alarm.svg')),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 360,
              height: 604,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            items: carouselItems
                                .map((image) => Image.asset(
                                      image,
                                      fit: BoxFit.fill,
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              height: 220,
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
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '오늘의 포트폴리오',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                  top: 15,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x60000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 156,
                            child: ListView.separated(
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(width: 12),
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: ShapeDecoration(
                                    color: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Color(0xFFf5f8ff),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  width: 140,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              decoration: ShapeDecoration(
                                                color: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                              width: 140,
                                              height: 140,
                                              // child: Image.asset(name),
                                            ),
                                            Positioned(
                                              right: 5,
                                              bottom: 5,
                                              child: SizedBox(
                                                height: 15,
                                                width: 60,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                      height: 14,
                                                      child: SvgPicture.asset(
                                                          'assets/icons/Eye.svg'),
                                                    ),
                                                    Text(
                                                      '1.9k',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Pretendard',
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 12,
                                                      height: 14,
                                                      child: SvgPicture.asset(
                                                          'assets/icons/Heart.svg'),
                                                    ),
                                                    Text(
                                                      '1.5k',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Pretendard',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '인기 포트폴리오',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                  top: 15,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x60000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 328,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xffB2CDFF),
                                  Color(0xff0059FF),
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                  ),
                                  child: Text(
                                    '2023트렌드가 모두 담긴 포트폴리오',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF002B7B),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 276),
                                  height: 124,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 10,
                                        offset: Offset(0, -4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  margin: EdgeInsets.only(
                                    top: 68,
                                    left: 52,
                                  ),
                                  width: 224,
                                  height: 224,
                                  // child: Image.asset(''),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 308,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'My세브란스 UX/UI리뉴얼 프로젝트',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '고믿음',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.Neutral60,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Spacer(),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColor.Primary10,
                                              ),
                                              child: Text(
                                                'UXUI',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColor.Primary10,
                                              ),
                                              child: Text(
                                                '디자인',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColor.Primary10,
                                              ),
                                              child: Text(
                                                '리뉴얼',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 60,
                            child: Stack(children: [
                              Image.asset('assets/images/Home_portfolio.png'),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 96),
                                width: 144,
                                height: 36,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 144,
                                      height: 12,
                                      child: Text(
                                        'Waranya Portfolio',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      width: 40,
                                      height: 16,
                                      child: Text(
                                        '설담비',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF3F3F3),
                                          fontSize: 14,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                          height: 0.09,
                                          letterSpacing: 0.01,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 60,
                            child: Stack(children: [
                              Image.asset('assets/images/Home_security.png'),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 69),
                                width: 190,
                                height: 36,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      height: 12,
                                      child: Text(
                                        '데이터 보안 생활을 위한 똑똑',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      width: 40,
                                      height: 16,
                                      child: Text(
                                        '송구슬',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF3F3F3),
                                          fontSize: 14,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                          height: 0.09,
                                          letterSpacing: 0.01,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 120,
                      width: 360,
                      child: Image.asset(
                        'assets/images/banner.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(children: [
                        
                      ],),
                    ),
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
      ),
    );
  }
}
