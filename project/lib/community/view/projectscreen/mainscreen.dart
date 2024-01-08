// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/color/colors.dart';
import 'package:project/community/view/appbar/AppBar.dart';
import 'package:project/community/view/button/detailbutton.dart';
import 'package:project/community/view/button/filterfindbutton.dart';
import 'package:project/community/view/button/filtericon.dart';
import 'package:project/community/view/button/joinbutton.dart';
import 'package:project/community/view/frame/%08frame2_5.dart';
import 'package:project/community/view/frame/backendframe.dart';
import 'package:project/community/view/frame/bottomnavigation.dart';
import 'package:project/community/view/frame/filterframe.dart';
import 'package:project/community/view/frame/frame2.dart';
import 'package:project/community/view/frame/frame2_2.dart';
import 'package:project/community/view/frame/frame2_3.dart';
import 'package:project/community/view/frame/frame2_4.dart';
import 'package:project/community/view/frame/framedesigner.dart';
import 'package:project/community/view/frame/framefont.dart';
import 'package:project/community/view/frame/graphicfont.dart';
import 'package:project/community/view/frame/serviceframe.dart';
import 'package:get/get.dart';
import 'package:project/wiget/slider.dart';
import 'package:project/wiget/slider2.dart';

const dropdownicon = 'assets/filter/dropdown.svg';
const defaulticon = 'assets/filter/default.svg';
const filtericon = 'assets/filter/dropdown.svg';
const bookmarkicon = 'assets/frameicon/bookmark.svg';
const replyicon = 'assets/frameicon/reply.svg';
const viewicon = 'assets/frameicon/view.svg';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBarWidget(),
              Container(
                width: 360,
                height: 172,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    padding: EdgeInsets.only(left: 13),
                    child: Text(
                      '핫한 프로젝트🔥',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FrameDesigner(),
                      SizedBox(
                        width: 10,
                      ),
                      FrameFront(),
                      SizedBox(
                        width: 10,
                      ),
                      GraphicFrame(),
                      SizedBox(
                        width: 10,
                      ),
                      Serviceframe(),
                      SizedBox(
                        width: 10,
                      ),
                      BackendFrame(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 24,
                      child: Text(
                        '프로젝트 모집',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      )),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Get.bottomSheet(
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Colors.white,
                            ),
                            child: SizedBox(
                              height: Get.height * 0.7,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20, top: 30),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '필터검색',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '포지션',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        FilterFindButton(
                                          text1: '전체',
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        FilterFindButton(
                                          text1: '개발자',
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        FilterFindButton(
                                          text1: '디자이너',
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        FilterFindButton(
                                          text1: '기획자',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '진행방식',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        FilterFindButton(text1: '전체'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        FilterFindButton(
                                          text1: '온라인',
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        FilterFindButton(
                                          text1: '오프라인',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '남은 모집기간',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FilterCareerSlider2(),
                                  Container(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '진행기간',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    ),
                                  ),
                                  FilterCareerSlider(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 102,
                                          height: 48,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: AppColor.Neutral10,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8))),
                                            child: Text(
                                              '초기화',
                                              style: TextStyle(
                                                color: AppColor.Neutral50,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 218,
                                          height: 48,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFF0059FF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '적용하기',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape:
                            CircleBorder(), // 동그라미 모양으로 만들기 위해 CircleBorder 적용
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        minimumSize: Size(34, 34), // 최소 크기 지정
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/filter/default.svg'),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(76, 32), // 크기 조정
                        backgroundColor: Colors.white,

                        side: BorderSide(
                          color: Color(0xFFE6E6E6),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '최신순',
                            style: TextStyle(
                              color: Color(0xFF020202),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            child:
                                SvgPicture.asset('assets/filter/dropdown.svg'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Frame2(),
              Frame2_2(
                title: '',
              ),
              Frame2_3(),
              Frame2_4(),
              Frame2_5(),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: SizedBox(
                  width: 360,
                  height: 18,
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '<1',
                              style: TextStyle(
                                color: Color(0xFF0059FF),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0.12,
                                letterSpacing: 30,
                              ),
                            ),
                            TextSpan(
                              text: '2345>',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                                letterSpacing: 30,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              BottomNavigationBarComponent(),
            ],
          ),
        )),
      ),
    );
  }
}
