import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team5/portfolio/group/filter.dart';
import 'best_portfolio.dart';
import '../group_all_category.dart';
import '../sfaclog_appbar.dart';
import '../sfaclog_tapbar.dart';
import '../../screen/bottom_nagivation_bar.dart';
import '../../screen/shortpec.dart';
import '../../utill/color.dart';

List<Map<String, dynamic>> planList = [
  {
    'title': 'Brace',
    'name': 'Felipe Viana',
    'tag': 'IT기획',
    'view': '20',
    'like': '680',
  },
  {
    'title': 'TECHWAVE',
    'name': 'Farouq Osuolale',
    'tag': 'IT기획',
    'view': '12',
    'like': '600',
  },
];
List<Map<String, dynamic>> designList = [
  {
    'title': 'ICAREUM',
    'name': 'STATE OF MIND',
    'tag': '브랜딩/편집',
    'view': '20',
    'like': '680',
  },
  {
    'title': 'ICAREUM',
    'name': '[까치설 숲향벼꽃 술도깨비] 패키지 디자인',
    'tag': '제품/패키지디자인',
    'view': '12',
    'like': '600',
  },
  {
    'title': '2024 NEW YEAR ANICARD',
    'name': 'Knock-Knock Animation',
    'tag': '영상/모션그래픽',
    'view': '12',
    'like': '600',
  },
];
List<Map<String, dynamic>> developList = [
  {
    'title': 'PWA | MVP for control Leads',
    'name': 'DizArm UX/UI Agency',
    'tag': '웹 개발',
    'view': '20',
    'like': '680',
  },
  {
    'title': 'SOLUTION FOR STARTUP',
    'name': '한주원',
    'tag': '앱 개발',
    'view': '12',
    'like': '600',
  },
];
List<Map<String, dynamic>> extraList = [
  {
    'title': 'IHalsaCAREUM',
    'name': 'Shuka Design',
    'tag': '공예',
    'view': '20',
    'like': '680',
  },
  {
    'title': 'Arte Samurai',
    'name': 'Pang Brands',
    'tag': '공예',
    'view': '12',
    'like': '600',
  },
];

class GroupPage extends StatefulWidget {
  @override
  Grouppage createState() => Grouppage();
}

class Grouppage extends State<GroupPage> {
  String view_type = 'assets/images/Sfaclog/One_view.svg';
  String dropdownValue = '최신순';
  ScrollController _scrollController = ScrollController();

  bool showAllCategory = true;
  int selectedCategory = 0;

  final List<Map<String, dynamic>> category = [
    {
      'en': 'plan',
      'kr': '기획',
      'controller': PageController(initialPage: 0),
      'list': planList,
    },
    {
      'en': 'design',
      'kr': '디자인',
      'controller': PageController(initialPage: 0),
      'list': designList,
    },
    {
      'en': 'develop',
      'kr': '개발',
      'controller': PageController(initialPage: 0),
      'list': developList,
    },
    {
      'en': 'extra',
      'kr': '기타',
      'controller': PageController(initialPage: 0),
      'list': extraList,
    },
  ];

  Future _showBottomSheet(BuildContext context, index) {
    return showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
          expand: false,
          maxChildSize: 1,
          initialChildSize: 554 / 677,
          builder: (BuildContext context, scrollController) {
            return PortfolioFilter(index: index);
          }),
    );
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
            Container(
              color: Colors.white,
              height: 556,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          width: 360,
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 32,
                                width: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: showAllCategory
                                      ? Colors.white
                                      : AppColor.BackgroundBiue,
                                ),
                                child: GestureDetector(
                                  onTap: () async {
                                    // 필터 오픈
                                    final result =
                                        await _showBottomSheet(context, showAllCategory ? 0 :selectedCategory+1);
                                    if (result != -1 && result != null) {
                                      setState(() {
                                        if (result == 0) {
                                          showAllCategory = true;
                                          _scrollController.animateTo(
                                            0,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.easeInOut,
                                          );
                                        } else {
                                          showAllCategory = false;

                                          _scrollController.animateTo(
                                            500.0,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.easeInOut,
                                          );
                                          selectedCategory = result - 1;
                                        }
                                      });
                                    }
                                    ;
                                  },
                                  child: Container(
                                    width: 34,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: showAllCategory
                                            ? Color(0xFFE6E6E6)
                                            : AppColor.StrokeBlue,
                                      ),
                                    ),
                                    child: Center(
                                      child: showAllCategory
                                          ? SvgPicture.asset(
                                              'assets/icons/filter/default.svg')
                                          : SvgPicture.asset(
                                              'assets/icons/sfaclog/filter.svg'),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 32,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.zero,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColor.Neutral10,
                                            width: 1),
                                      ),
                                      height: 32,
                                      width: 76,
                                      child: PopupMenuButton(
                                        constraints:
                                            BoxConstraints(maxWidth: 76),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          side: BorderSide.none,
                                        ),
                                        offset: Offset(2, 26),
                                        color: Colors.white,
                                        padding: EdgeInsets.zero,
                                        elevation: 0.3,
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 12,
                                              margin: EdgeInsets.only(left: 14),
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                dropdownValue,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  height: 0.08,
                                                  color: AppColor.Neutral100,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 12),
                                                child: SvgPicture.asset(
                                                    'assets/icons/filter/dropdown.svg'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        onSelected: (value) {
                                          setState(() {
                                            dropdownValue = value;
                                          });
                                        },
                                        itemBuilder: (BuildContext) => [
                                          PopupMenuItem(
                                            value: '최신순',
                                            child: Center(
                                              child: Container(
                                                width: 46,
                                                height: 40,
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '최신순',
                                                  style: TextStyle(
                                                    fontFamily: 'Pretendard',
                                                    color: dropdownValue ==
                                                            '최신순'
                                                        ? Colors.black
                                                        : AppColor.Neutral50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PopupMenuItem(
                                            value: '저장순',
                                            child: Center(
                                              child: Container(
                                                width: 46,
                                                height: 40,
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '저장순',
                                                  style: TextStyle(
                                                    fontFamily: 'Pretendard',
                                                    color: dropdownValue ==
                                                            '저장순'
                                                        ? Colors.black
                                                        : AppColor.Neutral50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PopupMenuItem(
                                            value: '댓글순',
                                            child: Center(
                                              child: Container(
                                                width: 46,
                                                height: 40,
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '댓글순',
                                                  style: TextStyle(
                                                    fontFamily: 'Pretendard',
                                                    color: dropdownValue ==
                                                            '댓글순'
                                                        ? Colors.black
                                                        : AppColor.Neutral50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (view_type ==
                                                'assets/images/Sfaclog/One_view.svg') {
                                              view_type =
                                                  'assets/images/Sfaclog/Multi_view.svg';
                                            } else {
                                              view_type =
                                                  'assets/images/Sfaclog/One_view.svg';
                                            }
                                          });
                                        },
                                        child: Container(
                                          child: SvgPicture.asset(view_type),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        BestPortfolioPage(),
                        Container(
                          child: showAllCategory
                              ? Column(
                                  children: [
                                    for (var i = 0; i < category.length; i++)
                                      Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(left: 16.25),
                                            child: Row(
                                              children: [
                                                Text(
                                                  category[i]['kr'],
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      showAllCategory =
                                                          !showAllCategory;
                                                      selectedCategory = i;
                                                      _scrollController
                                                          .animateTo(
                                                        500.0,
                                                        duration: Duration(
                                                            seconds: 1),
                                                        curve: Curves.easeInOut,
                                                      );
                                                    });
                                                  },
                                                  child: Container(
                                                      height: 24,
                                                      child: SvgPicture.asset(
                                                          'assets/icons/Back_right.svg')),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            height: 485,
                                            width: 360,
                                            child: PageView.builder(
                                              controller: category[i]
                                                  ['controller'],
                                              itemCount:
                                                  category[i]['list'].length,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  height: 485,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          top: 0,
                                                        ),
                                                        height: 360,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/Sfaclog/Group/${category[i]['en']}${index + 1}.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 360,
                                                        height: 360,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF000000)
                                                                  .withOpacity(
                                                                      0.7),
                                                              Color(0xFF000000)
                                                                  .withOpacity(
                                                                      0.0)
                                                            ],
                                                            stops: [0, 0.33],
                                                            begin: Alignment
                                                                .bottomCenter,
                                                            end: Alignment
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        right: 16,
                                                        top: 332,
                                                        child: Container(
                                                          width: 75,
                                                          height: 20,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Container(
                                                                width: 20,
                                                                height: 20,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/icons/Eye.svg',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 13,
                                                                height: 15,
                                                                child: Text(
                                                                  '${category[i]['list'][index]['view']}',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'Pretendard',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 20,
                                                                height: 20,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/icons/Heart.svg',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 19,
                                                                height: 15,
                                                                child: Text(
                                                                  '${category[i]['list'][index]['like']}',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'Pretendard',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: 328, left: 16),
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            ShapeDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/Sfaclog/Group/${category[i]['en']}_p${index + 1}.png'),
                                                            fit: BoxFit.fill,
                                                          ),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 2,
                                                                color: Colors
                                                                    .white),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 16, top: 384),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  category[i]['list']
                                                                          [
                                                                          index]
                                                                      ['title'],
                                                                  style: const TextStyle(
                                                                      color: Color(
                                                                          0xff030303),
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  category[i]['list']
                                                                          [
                                                                          index]
                                                                      ['name'],
                                                                  style:
                                                                      const TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              Container(
                                                                height: 28,
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10,
                                                                    vertical:
                                                                        8),
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: AppColor
                                                                      .Primary10,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      category[i]['list']
                                                                              [
                                                                              index]
                                                                          [
                                                                          'tag'],
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColor
                                                                            .Primary100,
                                                                        fontSize:
                                                                            12,
                                                                        fontFamily:
                                                                            'Pretendard',
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        height:
                                                                            0.08,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ]),
                                                      ),
                                                      Positioned(
                                                        top: 167.5,
                                                        left: 15.8,
                                                        child: Opacity(
                                                          opacity: index != 0
                                                              ? 1
                                                              : 0,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              category[i][
                                                                      'controller']
                                                                  .previousPage(
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 3,
                                                                      bottom: 3,
                                                                      right: 3),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 24,
                                                              width: 24,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: AppColor
                                                                      .Neutral10),
                                                              child: Container(
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                'assets/icons/Back.svg',
                                                                fit:
                                                                    BoxFit.fill,
                                                              )),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 167.5,
                                                        right: 15.8,
                                                        child: Opacity(
                                                          opacity: index !=
                                                                  category[i]['list']
                                                                          .length -
                                                                      1
                                                              ? 1
                                                              : 0,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              category[i][
                                                                      'controller']
                                                                  .nextPage(
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 3,
                                                                      top: 3,
                                                                      bottom:
                                                                          3),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 24,
                                                              width: 24,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: AppColor
                                                                      .Neutral10),
                                                              child: Container(
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                'assets/icons/Back_right.svg',
                                                                fit:
                                                                    BoxFit.fill,
                                                              )),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                        ],
                                      )
                                  ],
                                )
                              : // selected category
                              Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 16.25),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        category[selectedCategory]['kr'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    for (var index = 0;
                                        index <
                                            category[selectedCategory]['list']
                                                .length;
                                        index++)
                                      Container(
                                        child: Stack(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 0,
                                              ),
                                              height: 360,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Sfaclog/Group/${category[selectedCategory]['en']}${index + 1}.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 360,
                                              height: 360,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF000000)
                                                        .withOpacity(0.7),
                                                    Color(0xFF000000)
                                                        .withOpacity(0.0)
                                                  ],
                                                  stops: [0, 0.33],
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.center,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 16,
                                              top: 332,
                                              child: Container(
                                                width: 75,
                                                height: 20,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      child: SvgPicture.asset(
                                                        'assets/icons/Eye.svg',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 13,
                                                      height: 15,
                                                      child: Text(
                                                        '${category[selectedCategory]['list'][index]['view']}',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      child: SvgPicture.asset(
                                                        'assets/icons/Heart.svg',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 19,
                                                      height: 15,
                                                      child: Text(
                                                        '${category[selectedCategory]['list'][index]['like']}',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 328, left: 16),
                                              width: 44,
                                              height: 44,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Sfaclog/Group/${category[selectedCategory]['en']}_p${index + 1}.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 2,
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 16, top: 384),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        category[selectedCategory]
                                                                ['list'][index]
                                                            ['title'],
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xff030303),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        category[selectedCategory]
                                                                ['list'][index]
                                                            ['name'],
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 28,
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 8),
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            AppColor.Primary10,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            category[selectedCategory]
                                                                    ['list']
                                                                [index]['tag'],
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .Primary100,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Pretendard',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.08,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 40,
                                                    ),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                        ),
                      ],
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
