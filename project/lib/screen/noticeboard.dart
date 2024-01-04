import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team5/database/data_controller.dart';
import '../community/view/banner/community_banner.dart';
// import '../community/view/appbar/AppBar.dart';

class Notice_board extends StatefulWidget {
  const Notice_board({super.key});

  @override
  Notice_Board createState() => Notice_Board();
}

class Notice_Board extends State<Notice_board> {
  String drop_down_initial = '최신순';
  Data_Control data_control = Data_Control();
  Map<String, dynamic> docs = {};
  Map<String, dynamic> pop_docs = {};
  Map<String, Widget> pop_docs_panel = {};
  Map<String, Widget> docs_panel = {};
  Map<String, Map<String, Widget>> sub_category = {};
  Map<int, Map<String, Widget>> division_panel = {};
  List<String> big_image_urls = [];
  List<String> small_image_urls = [];
  int increase_num = 0;
  int page_num = 1;
  bool page_load = false;

  @override
  void initState() {
    super.initState();
    init_page();
  }

  void init_page() async {
    await get_data();
    bulid_post_panel();
    page_division();
    setState(() {
      page_load = true;
    });
  }

  Future<void> get_data() async {
    pop_docs = {};
    docs = await data_control.get_post();
    print('데이터 획득 : $docs');
    docs.forEach((key, value) {
      if (value['like'] >= 1) {
        pop_docs[key] = value;
      }
    });
    for (int i = 1; i < 6; i++) {
      String url_1 =
          await data_control.get_image('Notice/Profile_Big ($i).png');
      String url_2 =
          await data_control.get_image('Notice/Profile_Small ($i).png');
      big_image_urls.add(url_1);
      print('이미지 획득 : $big_image_urls');
      small_image_urls.add(url_2);
      print('이미지 획득 : $small_image_urls');
    }
  }

  void sub_cate_panel(String doc_id, List<dynamic> sub) {
    sub_category = {};
    sub_category[doc_id] = {};
    for (String id in sub) {
      sub_category[doc_id]![id] = Container(
        width: id.length * 6.0 + 16,
        height: 23,
        margin: EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 1,
            color: Color(0xFFF3F3F3),
          ),
        ),
        child: Center(
            child: Text(
          id,
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 10,
            fontWeight: FontWeight.w400,
            height: 0.15,
          ),
        )),
      );
    }
    print('서브 카테고리 ${sub_category}');
  }

  void bulid_post_panel() {
    for (String pop_id in pop_docs.keys) {
      if (increase_num != 4) {
        increase_num++;
      } else {
        increase_num = 0;
      }
      print('아이디 $pop_id');
      sub_cate_panel(pop_id, pop_docs[pop_id]['sub_category']);
      pop_docs_panel[pop_id] = Container(
        width: 152,
        height: 168,
        margin: EdgeInsets.only(right: 12),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 12,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 152,
                height: 156,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(width: 0.75, color: Color(0xFFE5EEFF)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 12, bottom: 13),
              child: Column(
                children: [
                  Container(
                    width: 132,
                    height: 40,
                    padding: EdgeInsets.only(right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.network(big_image_urls[increase_num]),
                        ),
                        Container(
                          width:
                              pop_docs[pop_id]['main_category'].length * 6.0 +
                                  16.0,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5EEFF),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Text(
                              pop_docs[pop_id]['main_category'],
                              style: TextStyle(
                                color: Color(0xFF0059FF),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 128,
                    height: 42,
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.zero,
                    child: Text(
                      pop_docs[pop_id]['title'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 0.11,
                      ),
                    ),
                  ),
                  Container(
                    width: 128,
                    height: 30,
                    margin: EdgeInsets.only(top: 4),
                    padding: EdgeInsets.zero,
                    child: Text(
                      pop_docs[pop_id]['detail'],
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        height: 0.15,
                      ),
                    ),
                  ),
                  Container(
                    height: 23,
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.zero,
                    child: SingleChildScrollView(
                      child:
                          Row(children: sub_category[pop_id]!.values.toList()),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
    print('인기 패널 생성 : ${pop_docs_panel}');
    for (String doc_id in docs.keys) {
      if (increase_num != 4) {
        increase_num++;
      } else {
        increase_num = 0;
      }
      sub_cate_panel(doc_id, docs[doc_id]['sub_category']);
      docs_panel[doc_id] = Container(
        width: 328,
        height: 114,
        margin: EdgeInsets.only(top: 6),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Color(0xFFF5F8FF),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 304,
              height: 20,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 8),
                    child: Image.network(
                      small_image_urls[increase_num],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    width: 40,
                    height: 12,
                    child: Center(
                      child: Text(
                        docs[doc_id]['writer'],
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 184,
                  ),
                  Container(
                    width: docs[doc_id]['main_category'].length * 6.0 + 16.0,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75),
                        color: Color(0xFFE5EEFF)),
                    child: Center(
                        child: Text(
                      docs[doc_id]['main_category'],
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        height: 0.15,
                      ),
                    )),
                  )
                ],
              ),
            ),
            Container(
              height: 28,
              margin: EdgeInsets.only(top: 8),
              child: Text(
                docs[doc_id]['title'],
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0.11,
                ),
              ),
            ),
            Container(
              height: 14,
              margin: EdgeInsets.only(top: 4),
              child: Text(
                docs[doc_id]['detail'],
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 0.15,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 16,
                  child: SingleChildScrollView(
                    child: Row(children: sub_category[doc_id]!.values.toList()),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 12,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Eye.svg',
                        // width: 10,
                        // height: 12,
                      ),
                      Text(
                        '${docs[doc_id]['views']}',
                        style: TextStyle(
                          color: Color(0xFF4C4C4C),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/Bubble.svg',
                        // width: 10,
                        // height: 12,
                      ),
                      Text(
                        '${docs[doc_id]['commentnum']}',
                        style: TextStyle(
                          color: Color(0xFF4C4C4C),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/Like.svg',
                        // width: 10,
                        // height: 12,
                      ),
                      Text(
                        '${docs[doc_id]['like']}',
                        style: TextStyle(
                          color: Color(0xFF4C4C4C),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
    print('일반 패널 생성 : ${docs_panel}');
  }

  void page_division() {
    division_panel = {};
    int page = 1;
    division_panel[page] = {};

    docs_panel.forEach((key, value) {
      division_panel[page]![key] = value;
      if (division_panel[page]!.length == 5) {
        page++;
        division_panel[page] = {};
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        body: page_load
            ? Container(
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 28,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 40,
                    ),
                    Container(
                      height: 564,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Custom_Banner(), // 배너 클래스
                            Container(
                              margin: EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 24,
                                    margin: EdgeInsets.only(top: 4, bottom: 14),
                                    child: Text(
                                      '인기 게시글',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    height: 168,
                                    width: 316,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children:
                                            pop_docs_panel.values.toList(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 40,
                                    margin: EdgeInsets.only(top: 4),
                                    child: Text(
                                      '실시간 게시글',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    width: 328,
                                    height: 38,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFEFEFE),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Color(0xFFF3F3F3),
                                                  width: 1)),
                                          child: SvgPicture.asset(
                                            'assets/icons/Filter.svg',
                                            // width: 12,
                                            // height: 12,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          height: 38,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xFFF3F3F3),
                                                width: 1),
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  drop_down_initial,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 4),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      //문서 증식용 필요시 주석 해제
                                                      // await data_control.increase_date();
                                                    },
                                                    child: SvgPicture.asset(
                                                      'assets/icons/Dropdown.svg',
                                                      // width: 12,
                                                      // height: 12,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 328,
                                    child: Column(
                                        children: docs_panel.values.toList()),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 64,
                      alignment: Alignment.bottomCenter,
                      color: Color(0xFFB3B3B3),
                    )
                  ],
                ),
              )
            : Container());
  }
}
