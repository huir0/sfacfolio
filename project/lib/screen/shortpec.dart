// import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:team5/database/data_controller.dart';

class Shortpec extends StatefulWidget {
  const Shortpec({super.key});

  @override
  ShortPec createState() => ShortPec();
}

class ShortPec extends State<Shortpec> {
  Map<String, bool> category = {'category_1': true, 'category_2': false};
  Map<String, String> category_name = {'category_1': '추천', 'category_2': '팔로잉'};
  Map<String, Widget> category_slot = {};
  Map<String, String> bot_nav_text = {
    'slot_1': '홈',
    'slot_2': '커뮤니티',
    'slot_3': '포트폴리오',
    'slot_4': '컬렉션',
    'slot_5': '마이페이지'
  };

  // Map<String, BottomNavigationBarItem> bot_nav_button = {};
  Map<String, Widget> bot_nav_button = {};
  Map<String, Widget> main_slot = {};
  bool heart = false;
  Data_Control data_control = Data_Control();
  Map<String, String> image_list = {};
  Map<String, List<String>> info = {};
  bool page_load = false;
  Map<String, dynamic> docs = {};

  @override
  void initState() {
    super.initState();
    init_page();
  }

  void init_page() async {
    await get_data();
    await get_image();
    build_container();
    Category();
    Navigation_bar_button();
    setState(() {
      page_load = true;
    });
  }

  Future<void> get_image() async {
    for (String docname in docs.keys) {
      String filename = docs[docname]['image'];
      image_list[docname] = await data_control.get_image('Shortpec/$filename');
    }
  }

  Future<void> get_data() async {
    docs = await data_control.get_post('Shortpec');
  }

  String number_format(int number) {
    NumberFormat format_num = NumberFormat('#,###');
    String result_string = '';
    if (number > 10000) {
      double change_int = number / 10000;
      result_string =
          '${change_int.toStringAsFixed(change_int.truncateToDouble() == change_int ? 0 : 1)}만';
    } else {
      result_string = format_num.format(number);
    }
    return result_string;
  }

  void build_container() async {
    for (String key in docs.keys) {
      main_slot[key] = Container(
        width: 360,
        height: 641,
        child: Stack(
          children: [
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  print('더블탭');
                  heart = !heart;
                  print(heart);
                  build_container();
                });
              },
              child: Container(
                height: 641,
                child: Image.network(
                  image_list[key] ?? '',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 360,
                height: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFF000000).withOpacity(1.0),
                  Color(0xFF000000).withOpacity(0.0)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Container(
                width: 360,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            docs[key]['title'] ?? '입력 없음(제목)',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            docs[key]['writer'] ?? '입력 없음(작성자)',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFFFFFFF)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 30,
                            width: docs[key]['category'].length * 11.0 + 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Center(
                                child: Text(
                              docs[key]['category'],
                              style: TextStyle(
                                color: Color(0xFF0059FF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 1,
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 116,
                      height: 105,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 39,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: SvgPicture.asset(
                                          'assets/icons/Shortfac_view.svg',
                                          width: 24,
                                          height: 24,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Text(
                                        number_format(docs[key]['views']),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Center(
                                          child: Container(
                                            width: 15,
                                            height: 15,
                                            child: SvgPicture.asset(
                                              heart
                                                  ? 'assets/icons/Blue_heart.svg'
                                                  : 'assets/icons/Empty_heart.svg',
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        heart
                                            ? number_format(
                                                docs[key]['like'] + 1)
                                            : number_format(docs[key]['like']),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
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
                              width: 116,
                              height: 46,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                    'assets/icons/Sfacfolio_switch.svg'),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    ;
  }

  void Category() {
    String last_name =
        category.keys.toList()[category.keys.toList().length - 1];
    for (String name in category.keys) {
      category_slot[name] = Container(
        width: 80,
        height: 48,
        margin: EdgeInsets.only(right: name != last_name ? 8 : 0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: category[name]!
                        ? Color(0xFFFFFFFF)
                        : Color(0xFF000000).withOpacity(0.0),
                    width: 2))),
        child: InkWell(
          onTap: () {
            setState(() {
              category.forEach((key, value) {
                category[key] = false;
              });
              category[name] = true;
            });
            Category();
          },
          child: Center(
            child: Text(
              category_name[name] ?? '오류',
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                    category[name]! ? FontWeight.bold : FontWeight.normal,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      );
    }
  }

  void Navigation_bar_button() {
    for (int i = 1; i < 6; i++) {
      bot_nav_button['slot_$i'] = Container(
        width: 48,
        height: 38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              child: Icon(Icons.home, color: Color(0xFFB3B3B3)),
            ),
            Text(
              bot_nav_text['slot_$i'] ?? '',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB3B3B3),
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light));
    return Scaffold(
      body: page_load
          ? Container(
              decoration: BoxDecoration(color: Colors.black),
              padding: EdgeInsets.only(top: 28),
              // SafeArea(
              child: Column(
                children: [
                  Container(
                    width: 360,
                    height: 648,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 7,
                          left: 0,
                          child: Container(
                            width: 360,
                            height: 641,
                            color: Colors.black,
                            child: PageView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: main_slot.length * 1000,
                              itemBuilder: (BuildContext context, int index) {
                                String key = main_slot.keys
                                    .elementAt(index % main_slot.length);
                                Widget value = main_slot[key]!;
                                return Column(
                                  children: [value],
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 360,
                            height: 48,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF000000).withOpacity(1.0),
                                    Color(0xFF000000).withOpacity(0.0)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: category_slot.values.toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    height: 64,
                    color: Color(0xFF000000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: bot_nav_button.values.toList(),
                    ),
                  )
                ],
              ),
            )
          : Container(),
    );
  }
}
