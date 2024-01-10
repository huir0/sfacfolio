import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utill/color.dart';

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

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < category.length; i++)
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16.25),
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
                          if (category[i]['controller'].page ==
                              category[i]['list'].length - 1) {
                            category[i]['controller'].animateToPage(
                              0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          } else {
                            category[i]['controller'].nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          }
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
                  child: PageView.builder(
                    controller: category[i]['controller'],
                    itemCount: category[i]['list'].length,
                    itemBuilder: (context, index) {
                      return Container(
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
                                      'assets/images/Sfaclog/Group/${category[i]['en']}${index + 1}.png'),
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
                                    Color(0xFF000000).withOpacity(0.7),
                                    Color(0xFF000000).withOpacity(0.0)
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
                                  mainAxisAlignment: MainAxisAlignment.end,
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
                                        '${category[i]['list'][index]['view']}',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
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
                                        '${category[i]['list'][index]['like']}',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 328, left: 16),
                              width: 44,
                              height: 44,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Sfaclog/Group/${category[i]['en']}_p${index + 1}.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 384),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        category[i]['list'][index]['title'],
                                        style: const TextStyle(
                                            color: Color(0xff030303),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        category[i]['list'][index]['name'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 28,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 8),
                                      decoration: ShapeDecoration(
                                        color: AppColor.Primary10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            category[i]['list'][index]['tag'],
                                            style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                              height: 0.08,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
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
            ),
        ],
      ),
    );
  }
}
