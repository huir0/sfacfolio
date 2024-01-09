import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../community/view/projectscreen/mainscreen.dart';

import '../screen/StudyPage.dart';
import '../screen/bottom_nagivation_bar.dart';
import '../screen/employment_filter.dart';
import '../screen/noticeboard.dart';
import '/screen/notice_employment.dart';
import '/screen/join_screen.dart';
import 'shortpec.dart';

const homeIcon = 'assets/icons/Home.svg';
const communityIcon = 'assets/icons/Community.svg';
const portfolioIcon = 'assets/icons/Portfolio.svg';
const collectionIcon = 'assets/icons/Collection.svg';
const mypageIcon = 'assets/icons/Mypage.svg';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  final _pageOptions = [
    // TODO: 연결될 페이지 설정해주기
    // Home(),
    // Community(),
    // Shortpec(),
    // Collection(),
    // MyPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   toolbarHeight: 48,
        //   // title: CustomAppBarWidget(),
        //   // bottom: CustomTabBar(),
        // ),
        // FIXME: body 설정해주기
        // body: _pageOptions.elementAt(_selectedIndex),
        body: TabBarView(
          children: [
            Center(child: Notice_board()),
            Center(child: Mainscreen()),
            Center(child: StudyPage()),
            Center(
              child: NoticeOfEmployment(),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBarComponent(),
        // bottomNavigationBar: Container(
        //   height: 64,
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Container(
        //         width: 48,
        //         child: IconButton(
        //           onPressed: () {
        //             _onItemTapped(0);
        //           },
        //           icon: _selectedIndex == 0
        //               ? Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       homeIcon,
        //                       color: Color(0xff0059ff),
        //                     ),
        //                     Text(
        //                       '홈',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xff0059ff),
        //                           fontWeight: FontWeight.bold, overflow: TextOverflow.visible),
        //                     )
        //                   ],
        //                 )
        //               : Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       homeIcon,
        //                     ),
        //                     Text(
        //                       '홈',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xffb3b3b3),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 ),
        //         ),
        //       ),
        //       Container(
        //         width: 48,
        //         child: IconButton(
        //           onPressed: () {
        //             _onItemTapped(1);
        //           },
        //           icon: _selectedIndex == 1
        //               ? Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       communityIcon,
        //                     ),
        //                     Container(
        //                       width: 48,
        //                       padding: EdgeInsets.zero,
        //                       child: Text(
        //                         '커뮤니티',
        //                         style: TextStyle(
        //                             fontSize: 10,
        //                             color: Color(0xff0059ff),
        //                             fontWeight: FontWeight.bold, ),
        //                       ),
        //                     )
        //                   ],
        //                 )
        //               : Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       communityIcon,
        //                       color: Color(0xffb3b3b3),
        //                     ),
        //                     Container(
        //                       width: 48,
        //                       padding: EdgeInsets.zero,
        //                       child: Text(
        //                         '커뮤니티',
        //                         maxLines: 1,
        //                         style: TextStyle(
        //                             fontSize: 10,
        //                             color: Color(0xffb3b3b3),
        //                             fontWeight: FontWeight.bold, ),
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //         ),
        //       ),
        //       Container(
        //         width: 48,
        //         child: IconButton(
        //           onPressed: () {
        //             _onItemTapped(2);
        //           },
        //           icon: _selectedIndex == 2
        //               ? Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       portfolioIcon,
        //                       color: Color(0xff0059ff),
        //                     ),
        //                     Text(
        //                       '포트폴리오',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xff0059ff),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 )
        //               : Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       portfolioIcon,
        //                     ),
        //                     Text(
        //                       '포트폴리오',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xffb3b3b3),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 ),
        //         ),
        //       ),
        //       Container(
        //         width: 48,
        //         child: IconButton(
        //           onPressed: () {
        //             _onItemTapped(3);
        //           },
        //           icon: _selectedIndex == 3
        //               ? Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       collectionIcon,
        //                       color: Color(0xff0059ff),
        //                     ),
        //                     Text(
        //                       '컬렉션',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xff0059ff),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 )
        //               : Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       collectionIcon,
        //                     ),
        //                     Text(
        //                       '컬렉션',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xffb3b3b3),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 ),
        //         ),
        //       ),
        //       Container(
        //         width: 48,
        //         child: IconButton(
        //           onPressed: () {
        //             _onItemTapped(4);
        //           },
        //           icon: _selectedIndex == 4
        //               ? Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       mypageIcon,
        //                       color: Color(0xff0059ff),
        //                     ),
        //                     Text(
        //                       '마이페이지',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xff0059ff),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 )
        //               : Column(
        //                   children: [
        //                     SvgPicture.asset(
        //                       mypageIcon,
        //                     ),
        //                     Text(
        //                       '마이페이지',
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Color(0xffb3b3b3),
        //                           fontWeight: FontWeight.bold),
        //                     )
        //                   ],
        //                 ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )

        // SizedBox(
        //   height: 64,
        //   child: BottomNavigationBar(
        //     backgroundColor: Colors.white,
        //     type: BottomNavigationBarType.fixed,
        //     selectedLabelStyle: TextStyle(
        //       fontSize: 10,
        //       fontWeight: FontWeight.bold,
        //     ),
        //     unselectedLabelStyle: TextStyle(
        //       fontSize: 10,
        //       fontWeight: FontWeight.bold,
        //     ),
        //     items: [
        // BottomNavigationBarItem(

        //   icon: SvgPicture.asset(homeIcon),
        //   activeIcon: SvgPicture.asset(
        //     homeIcon,
        //     color: Color(0xff0059ff),
        //   ),
        //   label: '홈',
        // ),
        //       BottomNavigationBarItem(
        //           icon: SvgPicture.asset(
        //             communityIcon,
        //             color: Color(0xffb3b3b3),
        //           ),
        //           activeIcon: SvgPicture.asset(
        //             communityIcon,
        //           ),
        //           label: '커뮤니티'),
        //       BottomNavigationBarItem(
        //           icon: SvgPicture.asset(portfolioIcon),
        //           activeIcon: SvgPicture.asset(
        //             portfolioIcon,
        //             color: Color(0xff0059ff),
        //           ),
        //           label: '포트폴리오'),
        //       BottomNavigationBarItem(
        //           icon: SvgPicture.asset(collectionIcon),
        //           activeIcon: SvgPicture.asset(
        //             collectionIcon,
        //             color: Color(0xff0059ff),
        //           ),
        //           label: '컬렉션'),
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset(mypageIcon),
        //         activeIcon: SvgPicture.asset(
        //           mypageIcon,
        //           color: Color(0xff0059ff),
        //         ),
        //         label: '마이페이지',
        //       ),
        //     ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Color(0xff0059ff),
        // unselectedItemColor: Color(0xffb3b3b3),
        // onTap: _onItemTapped,
        //   ),
        // ),
      ),
    );
  }
}
