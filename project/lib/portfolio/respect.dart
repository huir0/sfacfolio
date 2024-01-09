import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:team5/database/data_controller.dart';

class RespectPage extends StatefulWidget {
  @override
  Respectpage createState() => Respectpage();
}

class Respectpage extends State<RespectPage> {
  Map<String, Map<String, String>> rank_docs = {};
  Map<String, Map<String, String>> post_docs = {};
  Map<String, Widget> ranking_widget = {};
  Map<String, Widget> best_widget = {};
  Map<String, Widget> category_widget = {};
  Random random = Random();
  List<String> nickname = ['채채유', '정과', '햄마니', '하이 타이거'];
  List<String> category_name = ['UXUI', '그래픽', '영상'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Set_data();
    Category_build();
    Ranking_build();
    Best_build();
  }

  void Set_data() {
    rank_docs = {
      '1': {'view': '1.9k', 'like': '1.5k'},
      '2': {'view': '1.5k', 'like': '950'},
      '3': {'view': '1.3k', 'like': '580'},
      '4': {'view': '1k', 'like': '100'},
      '5': {'view': '890', 'like': '85'},
      '6': {'view': '720', 'like': '30'},
    };

    String view_number = number_format(random.nextInt(5001));
    String like_number = number_format(random.nextInt(5001));
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
        )),
      );
    }
  }

  void Best_build() {
    for (int i = 1; i < 5; i++) {
      best_widget['best_$i'] = Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(12),
        width: 212,
        height: 218,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFF5F8FF),
          border: Border.all(
            width: 1,
            color: Color(0xFF7FACFF),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 48,
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF99BCFF),
                      ),
                    ),
                    child: SvgPicture.asset(
                        'assets/images/Sfaclog/Respect/Respect_propile.svg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    width: 90,
                    height: 40,
                    child: Column(
                      children: [
                        Container(
                          height: 24,
                          child: Text(
                            nickname[i - 1],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              '팔로워',
                              style: TextStyle(
                                color: Color(0xFF7F7F7F),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '${random.nextInt(1000)}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 22,
              child: Row(children: category_widget.values.toList()),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 92,
              height: 92,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: SvgPicture.asset(
                  'assets/images/Sfaclog/Respect/BestSfac_2.png'),
            ),
            Container(
              width: 92,
              height: 92,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: Stack(
                children: [
                  SvgPicture.asset(
                      'assets/images/Sfaclog/Respect/BestSfac_3.png'),
                  Center(
                    child: Text(
                      '+3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  void Ranking_build() {
    for (String rank in rank_docs.keys) {
      ranking_widget[rank] = Container(
        width: 140,
        height: 156,
        margin: rank_docs.keys.toList().indexOf(rank) < 3
            ? EdgeInsets.only(right: 16)
            : EdgeInsets.only(left: 16),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Positioned(
              bottom: 4,
              left: 18,
              child: Container(
                width: 30,
                height: 40,
                child: Text(
                  rank,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                        color: Colors.blue,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 21,
              right: 5,
              child: Container(
                width: 60,
                height: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 10,
                      height: 14,
                      child: Image.asset(
                          'assets/images/Sfaclog/Respect/icons/View.png'),
                    ),
                    Container(
                      width: 20,
                      height: 15,
                      child: Text(
                        '${rank_docs[rank]!['view']}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 14,
                      child: Image.asset(
                          'assets/images/Sfaclog/Respect/icons/Heart.png'),
                    ),
                    Container(
                      width: 20,
                      height: 15,
                      child: Text(
                        '${rank_docs[rank]!['like']}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 564,
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 0.25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    Row(
                      children: [
                        ranking_widget['1']!,
                        ranking_widget['2']!,
                        ranking_widget['3']!,
                      ],
                    ),
                    Row(
                      children: [
                        ranking_widget['4']!,
                        ranking_widget['5']!,
                        ranking_widget['6']!,
                      ],
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: 120,
                height: 30,
                child: Text(
                  '베스트 스팩러',
                  style: TextStyle(
                    color: Color(0xFF0059FF),
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 210,
                child: Row(
                  children: best_widget.values.toList(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 360,
                height: 473,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 360,
                        height: 360,
                        child: SvgPicture.asset(
                            'assets/images/Sfaclog/Respect/respect_2.png'),
                      ),
                    ),
                    Positioned(
                      top: 332,
                      right: 16.47,
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset(
                                'assets/images/Sfaclog/Respect/icons/View.png'),
                          ),
                          Text(
                            '20',
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
                                    'assets/images/Sfaclog/Respect/icons/Heart.png'),
                              ),
                            ),
                          ),
                          Text(
                            '680',
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
                      left: 15.53,
                      child: Container(
                        width: 330,
                        height: 92,
                        child: Column(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 1, color: Color(0xFF99BCFF))),
                              child: Image.asset(
                                  'assets/images/Sfaclog/Respect/Respect_propile_2.png'),
                            ),
                            Text(
                              'TECHWAVE',
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
                              'Farouq Osuolale',
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
                            category_widget['slot_1']!,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 360,
                height: 473,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 360,
                        height: 360,
                        child: SvgPicture.asset(
                            'assets/images/Sfaclog/Respect/respect_2.png'),
                      ),
                    ),
                    Positioned(
                      top: 332,
                      right: 16.47,
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset(
                                'assets/images/Sfaclog/Respect/icons/View.png'),
                          ),
                          Text(
                            '20',
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
                                    'assets/images/Sfaclog/Respect/icons/Heart.png'),
                              ),
                            ),
                          ),
                          Text(
                            '680',
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
                      left: 15.53,
                      child: Container(
                        width: 330,
                        height: 92,
                        child: Column(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 1, color: Color(0xFF99BCFF))),
                              child: Image.asset(
                                  'assets/images/Sfaclog/Respect/Respect_propile_2.png'),
                            ),
                            Text(
                              'TECHWAVE',
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
                              'Farouq Osuolale',
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
                            category_widget['slot_2']!,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 30,
                width: 100,
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                          'assets/images/Sfaclog/Respect/icons/Shortfac_icon.svg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
