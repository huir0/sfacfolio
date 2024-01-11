import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/mypage/mypage_appbar.dart';
import '/screen/bottom_nagivation_bar.dart';

class Mypage extends StatefulWidget {
  Mypage({super.key});

  @override
  _Mypage createState() => _Mypage();
}

class _Mypage extends State<Mypage> {
  List<String> category_text = ['정보', '포트폴리오', '숏팩', '프로젝트', '스터디', '커뮤니티'];
  Map<String, Widget> category_widget = {};
  Map<String, bool> category_active = {};

  List<String> proposal_text = ['채용제안', '프리랜서 제안', '스팩 프로젝트 제안'];
  Map<String, Widget> proposal_widget = {};

  List<String> field_text = ['UX/UI', '일러스트레이션', '편집디자인'];
  Map<String, Widget> field_widget = {};

  List<String> site_text = [
    'spacfolio@gmail.com',
    '_spacfolio_',
    'spacfolio__'
  ];
  Map<String, Widget> site_widget = {};

  Map<String, Widget> technology_widget = {};

  List<String> style_text = ['꼼꼼한 스타일', '계획적', '리더쉽'];
  Map<String, Widget> style_widget = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Category_active();
    Category_build();
    Proposal_build();
    Field_build();
    Site_build();
    Technology_build();
    Style_build();
  }

  void Style_build() {
    for (String text in style_text) {
      style_widget[text] = Container(
        width: text.length * 11.0 + 28,
        margin: EdgeInsets.only(right: 8),
        height: 30,
        decoration: BoxDecoration(
          color: Color(0xFFF5F8FF),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: Color(0xFFE6E6E6)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFF0059FF),
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }
  }

  void Technology_build() {
    for (int i = 1; i < 4; i++) {
      technology_widget['icon_$i'] = Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child:
            SvgPicture.asset('assets/images/mypage/Mypage_technology_$i.svg'),
      );
    }
  }

  void Site_build() {
    for (String text in site_text) {
      site_widget[text] = Container(
        width: 328,
        height: 56,
        margin: EdgeInsets.only(
          top: 12,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFE6E6E6)),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/mypage/Mypage_site_${site_text.indexOf(text) + 1}.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: Color(0xFF020202),
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 24,
              height: 24,
              child: Center(
                child: SvgPicture.asset(site_text.indexOf(text) == 0
                    ? 'assets/images/mypage/Mypage_link_1.svg'
                    : 'assets/images/mypage/Mypage_link_2.svg'),
              ),
            )
          ],
        ),
      );
    }
  }

  void Field_build() {
    for (String text in field_text) {
      field_widget[text] = Container(
        width: 160,
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF5F8FF),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: Color(0xFFE5EEFF), shape: BoxShape.circle),
              child: Center(
                child: Image.asset(
                  'assets/images/mypage/Mypage_field_${field_text.indexOf(text) + 1}.png',
                  width: 14,
                  height: 14,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF020202),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      );
    }
  }

  void Proposal_build() {
    for (String text in proposal_text) {
      proposal_widget[text] = Container(
        width: text.length * 11.0 + 28,
        margin: EdgeInsets.only(right: 8),
        height: 30,
        decoration: BoxDecoration(
          color: Color(0xFFF5F8FF),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: Color(0xFFE6E6E6)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFF0059FF),
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }
  }

  void Category_active() {
    for (int i = 0; i < category_text.length; i++) {
      if (i == 0) {
        category_active[category_text[i]] = true;
      } else {
        category_active[category_text[i]] = false;
      }
    }
  }

  void Category_build() {
    for (String text in category_text) {
      category_widget[text] = GestureDetector(
        onTap: () {
          setState(() {
            category_active.forEach((key, value) {
              category_active[key] = false;
            });
            category_active[text] = true;
            Category_build();
          });
        },
        child: Container(
          margin: EdgeInsets.only(
              left: text == category_text[0] ? 16 : 0, right: 20),
          height: 38,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: category_active[text]!
                          ? Color(0xFF0059FF)
                          : Color(0xFFFFFFFF),
                      width: 3))),
          child: Text(
            text,
            style: TextStyle(
              color: category_active[text]!
                  ? Color(0xFF0059FF)
                  : Color(0xFF666666),
              fontSize: 16,
              fontFamily: 'Pretendard',
              fontWeight:
                  category_active[text]! ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: Container(
        width: 360,
        height: 740,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 652,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 360,
                      height: 48,
                      child: Mypage_Appbar(),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 328,
                      height: 144,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/mypage/mypage_propile.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '채채유',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'UX/UI를 공부중이에요',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 6, bottom: 8),
                                      child: Row(
                                        children: [
                                          Text(
                                            '팔로워',
                                            style: TextStyle(
                                              color: Color(0xFF666666),
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '50',
                                            style: TextStyle(
                                              color: Color(0xFF020202),
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            width: 1,
                                            height: 10,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            decoration: BoxDecoration(
                                                color: Color(0xFF666666)),
                                          ),
                                          Text(
                                            '팔로잉',
                                            style: TextStyle(
                                              color: Color(0xFF666666),
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '50',
                                            style: TextStyle(
                                              color: Color(0xFF020202),
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: 360,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFE5EEFF),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '프로필 편집',
                                      style: TextStyle(
                                        color: Color(0xFF0059FF),
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFE5EEFF),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 24,
                                            height: 24,
                                            child: Center(
                                              child: SvgPicture.asset(
                                                  'assets/images/mypage/Vector_Aim.svg'),
                                            )),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '저격률 98%',
                                          style: TextStyle(
                                            color: Color(0xFF0059FF),
                                            fontSize: 14,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 360,
                      height: 52,
                      padding: EdgeInsets.only(top: 14.5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: category_widget.values.toList()),
                      ),
                    ),
                    SizedBox(
                      height: 31.5,
                    ),
                    Container(
                      width: 360,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '소개',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '아기자기한 소품부터 실사 시네마틱 풍까지 다양하게 작업하고 있는 3D Generalist 입니다\n유튜브에서는 블렌더 튜토리얼도 공유하고 있어요!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
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
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '제안 허용',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 36,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                    children: proposal_widget.values.toList())),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 360,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '분야',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:
                                field_widget.values.toList().sublist(0, 2),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: field_widget.values.toList().sublist(2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 360,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '사이트',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Column(
                            children: site_widget.values.toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 360,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '기술',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: technology_widget.values.toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 360,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '업무 스타일',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 30,
                            child: Row(children: style_widget.values.toList()),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBarComponent(),
          ],
        ),
      ),
    );
  }
}
