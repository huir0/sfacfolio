import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:team5/portfolio/sfaclog_appbar.dart';
import 'package:team5/portfolio/sfaclog_filter.dart';
import 'package:team5/portfolio/sfaclog_tapbar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/screen/shortpec.dart';

class Following extends StatefulWidget {
  const Following({super.key});

  @override
  State<Following> createState() => _FollowingState();
}

Map<String, Widget> image_widget = {};
bool information = false;

@override
void initState() {
  // TODO: implement initState\
  Image_build();
}

void Image_build() {
  for (int i = 1; i < 4; i++) {
    image_widget['slot_$i'] = Container(
      margin: EdgeInsets.only(right: 8, left: i == 1 ? 16 : 0),
      width: 143,
      height: 254,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/Sfaclog/following/Shortpec_$i.png')),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}

class _FollowingState extends State<Following> {
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
                          children: [
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
                                                'assets/images/Sfaclog/following/1.png'),
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
                                                '2035',
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
                                                '230',
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
                                                              'assets/images/Sfaclog/following/1-1.png'),
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
                                                  'Interfaces',
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
                                                  'WGMinterfaces',
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
                                                Container(
                                                  width: 39,
                                                  height: 22,
                                                  margin:
                                                      EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFE5EEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                    child: Text(
                                                      'UXUI',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF0059FF),
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Pretendard',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                )
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
                                                'assets/images/Sfaclog/following/2.png'),
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
                                                '2035',
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
                                                '230',
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
                                                              'assets/images/Sfaclog/following/2-1.png'),
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
                                                  'Routine',
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
                                                  'Noyah Jung',
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
                                                Container(
                                                  width: 39,
                                                  height: 22,
                                                  margin:
                                                      EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFE5EEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                    child: Text(
                                                      'UXUI',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF0059FF),
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Pretendard',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                )
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
                              height: 40,
                            ),
                            Container(
                              height: 300,
                              child: Stack(children: [
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      information =
                                                          !information;
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
                                            )),
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
                                                            'assets/images/Sfaclog/following/4.gif')),
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
                                                            'assets/images/Sfaclog/following/5.gif')),
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
                                                            'assets/images/Sfaclog/following/6.gif')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                              ]),
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
                                                'assets/images/Sfaclog/following/3.png'),
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
                                                '6.4',
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
                                                '230',
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
                                          child: SingleChildScrollView(
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
                                                                'assets/images/Sfaclog/following/3-1.png'),
                                                            fit: BoxFit.cover),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Text(
                                                    '레종 프렌치 아이스블랑 & 휘바',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Pretendard',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'ne_reu, yujii joo',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Pretendard',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    width: 70,
                                                    height: 22,
                                                    margin: EdgeInsets.only(
                                                        right: 8),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFE5EEFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Center(
                                                      child: Text(
                                                        '제품/패키지',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF0059FF),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
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
                                                'assets/images/Sfaclog/following/4.png'),
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
                                                '2,451',
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
                                                '950',
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
                                                              'assets/images/Sfaclog/following/4-1.png'),
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
                                                  '<무장애: On Going>행사 그래픽',
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
                                                  'SINTHAL',
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
                                                Container(
                                                  width: 72,
                                                  height: 22,
                                                  margin:
                                                      EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFE5EEFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                    child: Text(
                                                      '디지털아트',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF0059FF),
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Pretendard',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                )
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
                  ),
                ],
              ),
            ),
            BottomNavigationBarComponent(),
          ],
        ),
      ),
    );
  }
}
