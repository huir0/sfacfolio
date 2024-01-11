import 'package:flutter/material.dart';

import '../screen/bottom_nagivation_bar.dart';
import '../utill/color.dart';

List<Map<String, dynamic>> messageContext = [
  {
    'pic': 'assets/pr/peeps-avatar-alpha (7).png',
    'name': '강건',
    'time': '5분전',
    'text': '안녕하세요. 프로젝트 참여하고 싶습니다!'
  },
  {
    'pic': 'assets/pr/peeps-avatar-alpha (6).png',
    'name': '문다운',
    'time': '10분전',
    'text': '연락드렸습니다!'
  },
  {
    'pic': 'assets/pr/peeps-avatar-alpha (1).png',
    'name': '정가을',
    'time': '30분전',
    'text': 'Designerjeong@sfac.com으로 부탁드립니다.'
  },
  {
    'pic': 'assets/pr/peeps-avatar-alpha (10).png',
    'name': '문바다',
    'time': '1시간전',
    'text': '네 알겠습니다!'
  },
];

class MessageNotification extends StatelessWidget {
  const MessageNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: TextStyle(
          fontFamily: 'Pretendard',
          color: Colors.black,
        ),
        child: Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 652,
                  child: Column(
                    children: [
                      Container(
                        width: 360,
                        margin: EdgeInsets.only(top: 12, bottom: 20),
                        alignment: Alignment.center,
                        child: Text(
                          '쪽지',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      for (var i = 0; i < messageContext.length; i++)
                        Container(
                          width: 328,
                          height: 64,
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom:
                                      BorderSide(color: AppColor.Neutral5))),
                          child: Stack(children: [
                            Positioned(
                              top: 22,
                              right: 0,
                              child: Text(
                                messageContext[i]['time'],
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Neutral60,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 1),
                              width: 52,
                              height: 52,
                              child: Image.asset(
                                messageContext[i]['pic'],
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 1, left: 64),
                              height: 26,
                              child: Text(
                                messageContext[i]['name'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 33, left: 64),
                              height: 14,
                              child: Text(
                                messageContext[i]['text'],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.Neutral60),
                              ),
                            ),
                          ]),
                        ),
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  child: BottomNavigationBarComponent(),
                ),
              ],
            )),
      ),
    );
  }
}
