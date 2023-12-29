import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';

class Onboarding4 extends StatefulWidget {
  const Onboarding4({super.key});

  @override
  State<Onboarding4> createState() => _Onboarding4State();
}

class _Onboarding4State extends State<Onboarding4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              width: 360,
              height: 740,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      width: 360,
                      height: 48,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.chevron_left)),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  width: 296,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF337AFF),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4 ',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF030303),
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '/ 4',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF999999),
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      margin: EdgeInsets.only(top: 24),
                      child: Text(
                        '스팩폴리오를 통해 무엇을',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        '얻고 싶으신가요?',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 4),
                      height: 36,
                      child: Text(
                        '가장 원하는 세 가지를 선택해주세요',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF000000)),
                      ),
                    ),
                    Container(
                      width: 328,
                      height: 64,
                      margin: EdgeInsets.only(top: 16, left: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFF5F8FF),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF0059FF)),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 150),
                          child: Text(
                            '포트폴리오 공유하기',
                            style: TextStyle(
                                color: Color(0xFF020202),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 328,
                      height: 64,
                      margin: EdgeInsets.only(top: 16, left: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFF8F8F9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Text(
                            '프로젝트나 스터디 탐색 및 팀원 구하기',
                            style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 328,
                      height: 64,
                      margin: EdgeInsets.only(top: 16, left: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFF8F8F9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 60),
                          child: Text(
                            '커뮤니티 활동으로 정보 공유하기',
                            style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 328,
                      height: 64,
                      margin: EdgeInsets.only(top: 16, left: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFF8F8F9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 140),
                          child: Text(
                            '채용 정보 탐색하기',
                            style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      margin: EdgeInsets.only(top: 16, left: 30),
                      height: 14,
                      child: Text(
                        '나중에 변경할 수 있어요 편하게 입력해 주세요',
                        style:
                            TextStyle(color: Color(0xFF666666), fontSize: 12),
                      ),
                    ),

                    Container(
                      width: 328,
                      height: 48,
                      margin: EdgeInsets.only(top: 16, left: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Color(0xFFE6E6E6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            '완료',
                            style: TextStyle(
                                color: Color(0xFF999999), fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: 328,
                    //   height: 48,
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(
                    //       padding: EdgeInsets.zero,
                    //       backgroundColor: Color(0xFFF8F8F9),
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10)),
                    //     ),
                    //     child: Container(
                    //       margin: EdgeInsets.only(right: 140),
                    //       child: Text(
                    //         '완료',
                    //         style: TextStyle(
                    //             color: Color(0xFF999999),
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w600),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
