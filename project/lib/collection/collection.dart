import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '/collection/collection_appbar.dart';
import '/collection/collection_filter.dart';
import '/screen/bottom_nagivation_bar.dart';

class Collection extends StatefulWidget {
  Collection({super.key});

  @override
  _Collection createState() => _Collection();
}

class _Collection extends State<Collection> {
  Map<String, Map<String, dynamic>> collection_docs = {
    '1': {'title': '모든 포트폴리오', 'count': '335', 'date': '3일', 'image': []},
    '2': {'title': '최근 본 포트폴리오', 'count': '35', 'date': '1주', 'image': []},
    '3': {'title': '리액션한 포트폴리오', 'count': '48', 'date': '1주', 'image': []},
    '4': {'title': 'UXUI 참고', 'count': '12', 'date': '3주', 'image': []},
    '5': {'title': '패키지 레퍼런스', 'count': '35', 'date': '8주', 'image': []},
    '6': {'title': '2024 트렌드', 'count': '12', 'date': '12주', 'image': []},
  };
  List<String> image_list = [];

  Map<String, Widget> collection_widget = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get_imagename();
    Collection_build();
  }

  void Get_imagename() async {
    for (int i = 1; i < 19; i++) {
      image_list.add('assets/images/collection/Collection_image_$i.png');
    }
    int image_num = 0;
    for (String text in collection_docs.keys) {
      for (int i = 0; i < 3; i++) {
        collection_docs[text]!['image'].add(image_list[image_num]);
        image_num++;
      }
    }
  }

  void Collection_build() {
    for (String text in collection_docs.keys) {
      collection_widget['slot_$text'] = Container(
        width: 160,
        height: 164,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            collection_docs.keys.toList().indexOf(text) < 3
                ? Container(
                    width: 160,
                    height: 106,
                    child: Stack(children: [
                      Positioned(
                        left: 54,
                        top: 0,
                        child: Container(
                          width: 106,
                          height: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child:
                                Image.asset(collection_docs[text]!['image'][2]),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 27,
                        child: Container(
                          width: 106,
                          height: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                  right: BorderSide(
                                      width: 2, color: Colors.white))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child:
                                Image.asset(collection_docs[text]!['image'][1]),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 106,
                          height: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                  right: BorderSide(
                                      width: 2, color: Colors.white))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child:
                                Image.asset(collection_docs[text]!['image'][0]),
                          ),
                        ),
                      ),
                    ]),
                  )
                : Container(
                    width: 160,
                    height: 106,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.5)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 108,
                            height: 108,
                            child:
                                Image.asset(collection_docs[text]!['image'][0]),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 52,
                            height: 52,
                            child:
                                Image.asset(collection_docs[text]!['image'][1]),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 52,
                            height: 52,
                            child:
                                Image.asset(collection_docs[text]!['image'][2]),
                          ),
                        ),
                        Positioned(
                            top: 8.8,
                            left: 9.7,
                            child: SvgPicture.asset(
                                'assets/images/collection/Collection_lock.svg'))
                      ],
                    ),
                  ),
            SizedBox(
              height: 12,
            ),
            Text(
              collection_docs[text]!['title'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  '${collection_docs[text]!['count']}개',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  collection_docs[text]!['date'],
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
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
              width: 360,
              height: 48,
              child: Collection_Appbar(),
            ),
            Container(
              width: 360,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 290,
                    height: 40,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 2, left: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: '내 컬렉션에서 검색하기',
                          hintStyle: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: Container(
                            width: 24,
                            height: 24,
                            child: Center(
                              child: SvgPicture.asset(
                                  'assets/images/collection/Collection_search.svg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Center(
                        child: Image.asset(
                            'assets/images/collection/Collection_add.png')),
                  )
                ],
              ),
            ),
            Container(
              width: 360,
              height: 556,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  CollectionFilter(),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      collection_widget['slot_1']!,
                      SizedBox(
                        width: 8,
                      ),
                      collection_widget['slot_2']!,
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      collection_widget['slot_3']!,
                      SizedBox(
                        width: 8,
                      ),
                      collection_widget['slot_4']!,
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      collection_widget['slot_5']!,
                      SizedBox(
                        width: 8,
                      ),
                      collection_widget['slot_6']!,
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              )),
            ),
            BottomNavigationBarComponent(),
          ],
        ),
      ),
    );
  }
}
