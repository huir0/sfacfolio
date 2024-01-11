import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:team5/portfolio/sfaclog_appbar.dart';
import 'package:team5/portfolio/sfaclog_filter.dart';
import 'package:team5/portfolio/sfaclog_tapbar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/screen/followlist.dart';
import 'package:team5/utill/color.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, title: Sfaclog_Appbar()),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              pinned: true,
              title: Container(width: 360, height: 48, child: Sfaclog_Tapbar()),
            )
          ],
          body: SingleChildScrollView(
            child: Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      followlist(),
                      SfaclogFilter(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/portfolioimage/portfolio/following/1.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                width: 160,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF000000)
                                                          .withOpacity(0.5),
                                                      Color(0xFF000000)
                                                          .withOpacity(0.0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.center,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -7,
                                    left: 10,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following2/1-1.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 65,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/eyeWicon.svg'),
                                        ),
                                        Text('2,035',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 12,
                                    right: 10,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          child: SvgPicture.asset(
                                              'assets/portfolioimage/portfolio/ioconsbutton/Vector.svg'),
                                        ),
                                        Text(' 230',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Interfaces',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 72,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Center(
                                  child: Text('디지털아트',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/portfolioimage/portfolio/following/2.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                width: 160,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF000000)
                                                          .withOpacity(0.5),
                                                      Color(0xFF000000)
                                                          .withOpacity(0.0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.center,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 10,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following/2-1.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 75,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/eyeWicon.svg'),
                                        ),
                                        Text('220',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    right: 10,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          child: SvgPicture.asset(
                                              'assets/portfolioimage/portfolio/ioconsbutton/Vector.svg'),
                                        ),
                                        Text(' 70',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 180,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary100),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Routine',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 72,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Center(
                                  child: Text('디지털아트',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/portfolioimage/portfolio/following/3.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                width: 160,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF000000)
                                                          .withOpacity(0.5),
                                                      Color(0xFF000000)
                                                          .withOpacity(0.0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.center,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 10,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following/3-2.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 1,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following/3-1.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 60,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/eyeWicon.svg'),
                                        ),
                                        Text('6.5만',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    right: 10,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          child: SvgPicture.asset(
                                              'assets/portfolioimage/portfolio/ioconsbutton/Vector.svg'),
                                        ),
                                        Text(' 6,856',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 160,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary100),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '레종 프렌치 아이스블랑&',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '휘바 썸머에디션',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                ' 패키지 일러스트',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 72,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Center(
                                  child: Text('디지털아트',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/portfolioimage/portfolio/following/4.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                width: 160,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF000000)
                                                          .withOpacity(0.5),
                                                      Color(0xFF000000)
                                                          .withOpacity(0.0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.center,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 10,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following/4-1.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 60,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/eyeWicon.svg'),
                                        ),
                                        Text('2,451',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 9,
                                    right: 10,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          child: SvgPicture.asset(
                                              'assets/portfolioimage/portfolio/ioconsbutton/Vector.svg'),
                                        ),
                                        Text(' 950',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 160,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary100),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              Container(
                                width: 160,
                                height: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '〈무장애: On Going〉  ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w700,
                                        height: 0.09,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text(
                                      '행사 그래픽',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w700,
                                        height: 0.09,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 72,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Center(
                                  child: Text('디지털아트',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                                'assets/portfolioimage/portfolio/ioconsbutton/shortfac.png'),
                            Text('숏팩',
                                style: TextStyle(
                                  color: Color(0xFF0059FF),
                                  fontSize: 20,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(),
                            Image.asset(
                                'assets/portfolioimage/portfolio/ioconsbutton/Vector.png')
                          ],
                        ),
                      ),
                      Container(
                        width: 485,
                        height: 254,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black),
                                    child: Image.asset(
                                      'assets/portfolioimage/shortpack/Rectangle 34646454.png',
                                      fit: BoxFit.fill,
                                      width: 143,
                                      height: 254,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/portfolioimage/shortpack/5.gif',
                                      fit: BoxFit.fill,
                                      width: 143,
                                      height: 254,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/portfolioimage/shortpack/6.gif',
                                      fit: BoxFit.fill,
                                      width: 143,
                                      height: 254,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/portfolioimage/portfolio/following2/5.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                width: 160,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF000000)
                                                          .withOpacity(0.5),
                                                      Color(0xFF000000)
                                                          .withOpacity(0.0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.center,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 22,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following2/5-2.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 13,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following2/5-1.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 44,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/eyeWicon.svg'),
                                        ),
                                        Text('6,234',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 9,
                                    right: 10,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          child: SvgPicture.asset(
                                              'assets/portfolioimage/portfolio/ioconsbutton/Vector.svg'),
                                        ),
                                        Text(' 56',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 160,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary100),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '발달장애 아동을 키우는',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '부모님과 선생님을 위한',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '아이 관리 앱 서비스',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 48,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Center(
                                  child: Text('UXUI',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                'assets/portfolioimage/portfolio/following2/6.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              left: 0,
                                              child: Container(
                                                width: 160,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFF000000)
                                                          .withOpacity(0.5),
                                                      Color(0xFF000000)
                                                          .withOpacity(0.0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.center,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -11,
                                    left: 10,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.white, width: 1.5),
                                      ),
                                      child: Image.asset(
                                          'assets/portfolioimage/portfolio/following2/3-2.png'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: SvgPicture.asset(
                                              'assets/icons/eyeWicon.svg'),
                                        ),
                                        Text('20',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 9,
                                    right: 8,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 10,
                                          child: SvgPicture.asset(
                                              'assets/portfolioimage/portfolio/ioconsbutton/Vector.svg'),
                                        ),
                                        Text(' 680',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 160,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary100),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 4,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.Primary50),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Space Explorer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                                maxLines: 3,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'mobile app UI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'concept',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 48,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Center(
                                  child: Text('UXUI',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      BottomNavigationBarComponent()
                    ],
                  ),
                  Positioned(
                      right: 0,
                      bottom: 70,
                      child: Image.asset(
                          'assets/portfolioimage/portfolio/ioconsbutton/shortfac_switch.png')),
                ],
              ),
            ),
          ),
        ));
  }
}
