import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screen/bottom_nagivation_bar.dart';
import '../utill/color.dart';

List<String> tagList = ['전체', '커뮤니티', '포트폴리오', '컬렉션'];
List<Map<String, dynamic>> notificationContext = [
  {
    'icon': communityIcon,
    'category': '게시판',
    'time': '5분전',
    'title': "'도와주세요!'글에 문바다님이 댓글을 남겼습니다.",
    'text': '"도움 되셨다니 다행이에요!"',
  },
  {
    'icon': communityIcon,
    'category': '프로젝트',
    'time': '10분전',
    'title': "’미라클 모닝 스터디’ 댓글에 주최자님이 댓글을 남겼습니다.",
    'text': '“자유롭게 공부하시면 됩니다~!”',
  },
  {
    'icon': communityIcon,
    'category': '스터디',
    'time': '1시간전',
    'title': "’UX/UI 마스터’글에 정가을님이 댓글을 남겼습니다.",
    'text': '“스터디 장소를 상세하게 공유받을수 있을까요?”',
  },
  {
    'icon': portfolioIcon,
    'category': '게시판',
    'time': '2일전',
    'title': "’유데미 사용성 개선’글에 강건님이 댓글을 남겼습니다.",
    'text': '“정말 잘 만든 포트폴리오 인거 같아요!”',
  },
  {
    'icon': collectionIcon,
    'category': '컬렉션',
    'time': '23.12.31',
    'title': "’리액션한 포트폴리오’ 컬렉션을 공유했습니다.",
    'text': '강건님께 포트폴리오를 공유했습니다.',
  },
];

const communityIcon = 'assets/icons/Community.svg';
const portfolioIcon = 'assets/icons/Portfolio.svg';
const collectionIcon = 'assets/icons/Collection.svg';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({super.key});
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
                      Stack(
                        children: [
                          Container(
                            width: 360,
                            height: 30,
                            margin: EdgeInsets.only(top: 12, bottom: 20),
                            alignment: Alignment.center,
                            child: Text(
                              '알림',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              margin: EdgeInsets.only(top: 16, left: 16),
                              height: 24,
                              width: 24,
                              child: SvgPicture.asset(
                                  'assets/icons/Back.svg'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 360,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            for (var i = 0; i < tagList.length; i++)
                              Container(
                                height: 36,
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 9),
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: AppColor.Neutral10),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  tagList[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      for (var i = 0; i < notificationContext.length; i++)
                        Container(
                          width: 328,
                          height: 80,
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom:
                                      BorderSide(color: AppColor.Neutral5))),
                          child: Stack(children: [
                            Positioned(
                              top: 8,
                              right: 0,
                              child: Text(
                                notificationContext[i]['time'],
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Neutral60,
                                ),
                              ),
                            ),
                            Container(
                              width: 24,
                              height: 24,
                              child: SvgPicture.asset(
                                notificationContext[i]['icon'],
                                color: AppColor.Neutral100,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 29),
                              alignment: Alignment.centerLeft,
                              height: 24,
                              child: Text(
                                notificationContext[i]['category'],
                                style: TextStyle(
                                    color: AppColor.Neutral100,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 28, left: 1),
                              height: 14,
                              child: Text(
                                notificationContext[i]['title'],
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 54, left: 1),
                              height: 14,
                              child: Text(
                                notificationContext[i]['text'],
                                style: TextStyle(
                                    fontSize: 10,
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
