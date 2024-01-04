// import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

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
  Map<String, Widget> main_info = {};

  // Map<String, BottomNavigationBarItem> bot_nav_button = {};
  Map<String, Widget> bot_nav_button = {};
  Map<String, Widget> main_slot = {};
  Map<String, String> main_text_1 = {};
  Map<String, String> main_text_2 = {};
  Map<String, List<String>> main_text_3 = {};
  Map<String, List<Widget>> main_text_3_button = {};

  @override
  void initState() {
    for (int i = 1; i < 4; i++) {
      main_text_1['text_$i'] = '$i 번째 제목';
      main_text_2['text_$i'] = '$i 번째 작성자';
      main_text_3['text_$i'] = ['cate_ex_${i}', 'cate_ex_${i}', 'cate_ex_${i}'];
      Main_text_category('text_$i');
    }
    super.initState();
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
                    color:
                        category[name]! ? Color(0xFFFFFFFF) : Color(0xFF000000),
                    width: 2))),
        child: InkWell(
          onTap: () {
            setState(() {
              category.forEach((key, value) {
                category[key] = false;
              });
              category[name] = true;
            });
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

  List<String> Random_count() {
    Random random = Random();
    String look = '${random.nextInt(101)}.${random.nextInt(10)}K';
    String like = '${random.nextInt(1001)}';
    return [look, like];
  }

  void Main_slot() {
    for (int i = 1; i < 4; i++) {
      List<String> ranCount = Random_count();
      main_slot['slot_$i'] = Container(
        width: 360,
        height: 600,
        color: Colors.lightBlueAccent,
        child: Stack(
          children: [
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
                height: 120,
                width: 360,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            main_text_1['text_$i'] ?? '입력 없음(제목)',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                          Text(
                            main_text_2['text_$i'] ?? '입력 없음(작성자)',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFFFFFFF)),
                          ),
                          SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: main_text_3_button['text_$i']!.toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 32,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 24.0,
                                  color: Color(0xFFFFFFFF),
                                ),
                                Text(
                                  ranCount[0],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFFFFFFFF)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 32,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 24.0,
                                  color: Color(0xFFFFFFFF),
                                ),
                                Text(
                                  ranCount[1],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            width: 48,
                            height: 48,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFFFFFFF),
                              // child: ,
                            ),
                          )
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
  }

  void Main_text_category(String name) {
    if (main_text_3.containsKey(name)) {
      List<String> category = main_text_3[name] ?? [];
      bool last_slot = true;
      for (String slot_name in category) {
        if (slot_name != category[category.length - 1]) {
          last_slot = false;
        } else {
          last_slot = true;
        }
        main_text_3_button[name] ??= [];
        Widget container = Container(
          margin: EdgeInsets.only(right: 8.0),
          width: slot_name.length * 6.0 + 6.0,
          height: 22,
          decoration: BoxDecoration(
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              slot_name,
              style: TextStyle(
                fontSize: 10,
                color: Color(0xFF000000),
              ),
            ),
          ),
        );
        main_text_3_button[name]?.add(container);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light));
    Category();
    Navigation_bar_button();
    Main_slot();
    return Scaffold(
      body: Container(
        color: Colors.black,
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // SafeArea(
        child: Column(
          children: [
            Container(
              height: 48,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: category_slot.values.toList(),
              ),
            ),
            Container(
              width: 360,
              height: 600,
              color: Colors.black,
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: main_slot.length * 1000,
                itemBuilder: (BuildContext context, int index) {
                  String key =
                      main_slot.keys.elementAt(index % main_slot.length);
                  Widget value = main_slot[key]!;
                  return Column(
                    children: [value],
                  );
                },
              ),
            ),
            Container(
              width: 360,
              height: 50,
              color: Color(0xFF000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: bot_nav_button.values.toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
