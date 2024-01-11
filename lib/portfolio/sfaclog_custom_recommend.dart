import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:team5/community/view/frame/framedesigner.dart';
import 'package:team5/database/data_controller.dart';
import 'package:team5/portfolio/sfaclog_appbar.dart';
import 'package:team5/portfolio/sfaclog_filter.dart';
import 'package:team5/portfolio/sfaclog_tapbar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/screen/shortpec.dart';

class Custom_recommend extends StatefulWidget {
  @override
  Respectpage createState() => Respectpage();
}

class Respectpage extends State<Custom_recommend> {
  Map<String, Map<String, String>> rank_docs = {};
  Map<String, Map<String, String>> post_docs = {};
  Map<String, Map<String, String>> respect_docs = {};
  Map<String, Widget> ranking_widget = {};
  Map<String, Widget> best_widget = {};
  Map<String, Widget> category_widget = {};
  Map<String, Widget> Custom_widget = {};
  Map<String, Widget> image_widget = {};
  Random random = Random();
  List<String> nickname = ['채채유', '정과', '햄마니', '하이 타이거'];
  List<String> category_name = ['UXUI', '브랜딩', 'UXUI'];

  bool information = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Set_data();
    Category_build();
    Custom_build();
    Image_build();
  }

  void Set_data() {
    respect_docs = {
      '1': {'title': '데이터 보안 생활을 위한 똑똑', 'writer': '공사일이'},
      '2': {'title': 'SBS드라마 <악귀>', 'writer': '스튜디오 펀데이,JINNY'},
      '3': {'title': '식집사들을 위한 꼼꼼한', 'writer': 'YEINJUN'},
      '4': {'title': 'LEGATIST:협업 기반 글로벌', 'writer': 'YOONJI PARK'},
      '5': {'title': 'antiox 스파클린마스크 세범필', 'writer': 'YOONJI PARK'},
    };
  }

  String number_format(int number) {
    NumberFormat format_num = NumberFormat('###');
    String result_string = '';
    if (number > 10000) {
      double change_int = number / 1000;
      result_string =
          '${change_int.toStringAsFixed(change_int.truncateToDouble() == change_int ? 0 : 1)}k';
    } else {
      result_string = format_num.format(number);
    }
    return result_string;
  }

  void Category_build() {
    for (int i = 1; i < 4; i++) {
      category_widget['slot_$i'] = Container(
        width: 39,
        height: 22,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            color: Color(0xFFE5EEFF), borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            category_name[i - 1],
            style: TextStyle(
              color: Color(0xFF0059FF),
              fontSize: 10,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }
  }

  void Custom_build() {
    for (int i = 1; i < 3; i++) {
      Custom_widget['slot_$i'] = Container(
        margin: EdgeInsets.only(bottom: i == 1 ? 40 : 0),
        width: 360,
        height: 485,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 360,
                height: 360,
                child: Image.asset('assets/images/Sfaclog/custom/$i.png'),
              ),
            ),
            Positioned(
              top: 328,
              right: 16,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(
                        'assets/images/Sfaclog/Icons/view.svg'),
                  ),
                  Text(
                    '${random.nextInt(1000)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Container(
                        width: 10,
                        height: 9.17,
                        child: SvgPicture.asset(
                            'assets/images/Sfaclog/Icons/Heart.svg'),
                      ),
                    ),
                  ),
                  Text(
                    '${random.nextInt(1000)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 16,
              child: Container(
                width: 330,
                height: 157,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Sfaclog/custom/$i-$i.png'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      respect_docs['$i']!['title']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      respect_docs['$i']!['writer']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    category_widget['slot_$i']!,
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  void Image_build() {
    for (int i = 1; i < 4; i++) {
      image_widget['slot_$i'] = Container(
        margin: EdgeInsets.only(right: 8, left: i == 1 ? 16 : 0),
        width: 143,
        height: 254,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage('assets/images/Sfaclog/custom/Shortpec_$i.png')),
            borderRadius: BorderRadius.circular(12)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        width: 360,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: 360,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Sfaclog_Appbar(),
            ),
            Container(
              width: 360,
              height: 48,
              child: Sfaclog_Tapbar(),
            ),
            SfaclogFilter(),
            Container(
              height: 500,
              margin: EdgeInsets.only(top: 8),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 360,
                      height: 550,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 360,
                              child: Column(
                                children: Custom_widget.values.toList(),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              height: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 300,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 16),
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                child: SvgPicture.asset(
                                                    'assets/images/Sfaclog/Icons/Shortfac_icon.svg'),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 30,
                                                child: Text(
                                                  '숏팩',
                                                  style: TextStyle(
                                                    color: Color(0xFF0059FF),
                                                    fontSize: 20,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    information = !information;
                                                  });
                                                },
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: SvgPicture.asset(
                                                      'assets/images/Sfaclog/Icons/Vector.svg'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 8, left: 16),
                                                width: 143,
                                                height: 254,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fitHeight,
                                                        image: AssetImage(
                                                            'assets/images/Sfaclog/following/1.gif')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 8, left: 8),
                                                width: 143,
                                                height: 254,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fitHeight,
                                                        image: AssetImage(
                                                            'assets/images/Sfaclog/following/2.gif')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 8, left: 8),
                                                width: 143,
                                                height: 254,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fitHeight,
                                                        image: AssetImage(
                                                            'assets/images/Sfaclog/following/3.gif')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  information
                                      ? Positioned(
                                          left: 83.5,
                                          top: 25.6,
                                          child: Container(
                                            width: 223,
                                            height: 42,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  bottom: 0,
                                                  left: 0,
                                                  child: Container(
                                                    width: 223,
                                                    height: 34,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFE6E6E6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8)),
                                                    child: Center(
                                                      child: Text(
                                                        '스팩폴리오의 숏폼 콘텐츠를 경험해보세요!',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF020202),
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 19,
                                                  child: Container(
                                                    width: 12,
                                                    height: 12,
                                                    child: SvgPicture.asset(
                                                        'assets/images/Sfaclog/Respect/Triangle.svg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: 360,
                              child: Column(
                                children: [
                                  Container(
                                    width: 360,
                                    height: 485,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            width: 360,
                                            height: 360,
                                            child: Image.asset(
                                                'assets/images/Sfaclog/custom/3.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 328,
                                          right: 16,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: SvgPicture.asset(
                                                    'assets/images/Sfaclog/Icons/view.svg'),
                                              ),
                                              Text(
                                                '${random.nextInt(1000)}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: Center(
                                                  child: Container(
                                                    width: 10,
                                                    height: 9.17,
                                                    child: SvgPicture.asset(
                                                        'assets/images/Sfaclog/Icons/Heart.svg'),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '${random.nextInt(1000)}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 16,
                                          child: Container(
                                            width: 330,
                                            height: 157,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 44,
                                                  height: 44,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Sfaclog/custom/3-1.png'),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.white)),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  respect_docs['3']!['title']!,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  respect_docs['3']!['writer']!,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                category_widget['slot_3']!,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 360,
                              child: Column(
                                children: [
                                  Container(
                                    width: 360,
                                    height: 485,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            width: 360,
                                            height: 360,
                                            child: Image.asset(
                                                'assets/images/Sfaclog/custom/4.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 328,
                                          right: 16,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: SvgPicture.asset(
                                                    'assets/images/Sfaclog/Icons/view.svg'),
                                              ),
                                              Text(
                                                '${random.nextInt(1000)}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: Center(
                                                  child: Container(
                                                    width: 10,
                                                    height: 9.17,
                                                    child: SvgPicture.asset(
                                                        'assets/images/Sfaclog/Icons/Heart.svg'),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '${random.nextInt(1000)}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 16,
                                          child: Container(
                                            width: 330,
                                            height: 157,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 44,
                                                  height: 44,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Sfaclog/custom/4-1.png'),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.white)),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  respect_docs['4']!['title']!,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  respect_docs['4']!['writer']!,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                category_widget['slot_3']!,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 8, right: 8),
                                      padding: EdgeInsets.only(
                                          top: 8,
                                          left: 11,
                                          right: 11,
                                          bottom: 12),
                                      width: 212,
                                      height: 210,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xFFF5F8FF),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xFF7FACFF),
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 53,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 48,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Sfaclog/custom/goodspec1.png'),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 4),
                                                    width: 90,
                                                    height: 53,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            'Plus X',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Pretendard',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '팔로워',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF7F7F7F),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Pretendard',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 4,
                                                              ),
                                                              Text(
                                                                '13.4만',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Pretendard',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 22,
                                              child: Row(
                                                  children: category_widget
                                                      .values
                                                      .toList()),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(children: [
                                              Container(
                                                width: 92,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Image.asset(
                                                      'assets/images/Sfaclog/custom/goodspec1-1.png'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                width: 92,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/Sfaclog/custom/goodspec1-2.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          '+3',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontFamily:
                                                                'Pretendard',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ]),
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 8, right: 8),
                                      padding: EdgeInsets.only(
                                          top: 8,
                                          left: 11,
                                          right: 11,
                                          bottom: 12),
                                      width: 212,
                                      height: 210,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xFFF5F8FF),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xFF7FACFF),
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 53,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 48,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Sfaclog/custom/goodspec2.png'),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 4),
                                                    width: 90,
                                                    height: 53,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            'BX Desgin',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Pretendard',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '팔로워',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF7F7F7F),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Pretendard',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 4,
                                                              ),
                                                              Text(
                                                                '5.3만',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Pretendard',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 22,
                                              child: Row(
                                                  children: category_widget
                                                      .values
                                                      .toList()),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(children: [
                                              Container(
                                                width: 92,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Image.asset(
                                                      'assets/images/Sfaclog/custom/goodspec2-1.png'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                width: 92,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/Sfaclog/custom/goodspec2-2.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          '+3',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontFamily:
                                                                'Pretendard',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ]),
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 8, right: 8),
                                      padding: EdgeInsets.only(
                                          top: 8,
                                          left: 11,
                                          right: 11,
                                          bottom: 12),
                                      width: 212,
                                      height: 210,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xFFF5F8FF),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xFF7FACFF),
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 53,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 48,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Sfaclog/custom/goodspec3.png'),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 4),
                                                    width: 90,
                                                    height: 53,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            'DFY',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Pretendard',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '팔로워',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF7F7F7F),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Pretendard',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 4,
                                                              ),
                                                              Text(
                                                                '3만',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Pretendard',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 22,
                                              child: Row(
                                                  children: category_widget
                                                      .values
                                                      .toList()),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(children: [
                                              Container(
                                                width: 92,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Image.asset(
                                                      'assets/images/Sfaclog/custom/goodspec3-1.png'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                width: 92,
                                                height: 92,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/Sfaclog/custom/goodspec3-2.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          '+3',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontFamily:
                                                                'Pretendard',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ]),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 360,
                              child: Column(
                                children: [
                                  Container(
                                    width: 360,
                                    height: 485,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            width: 360,
                                            height: 360,
                                            child: Image.asset(
                                                'assets/images/Sfaclog/custom/5.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 328,
                                          right: 16,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: SvgPicture.asset(
                                                    'assets/images/Sfaclog/Icons/view.svg'),
                                              ),
                                              Text(
                                                '${random.nextInt(1000)}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: Center(
                                                  child: Container(
                                                    width: 10,
                                                    height: 9.17,
                                                    child: SvgPicture.asset(
                                                        'assets/images/Sfaclog/Icons/Heart.svg'),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '${random.nextInt(1000)}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 16,
                                          child: Container(
                                            width: 330,
                                            height: 157,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 44,
                                                  height: 44,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Sfaclog/custom/5-1.png'),
                                                          fit: BoxFit.cover),
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.white)),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  'antioxc 스파클린마스크 세범필',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'antioxc',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                category_widget['slot_3']!,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 16,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4C000000),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                              spreadRadius: -6,
                            )
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => Shortpec());
                        },
                        child: Container(
                          width: 116,
                          height: 46,
                          child: SvgPicture.asset(
                              'assets/images/Sfaclog/Icons/Shortfac_switch.svg'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomNavigationBarComponent()
          ],
        ),
      ),
    );
  }
}
