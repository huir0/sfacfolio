import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../community/view/projectscreen/mainscreen.dart';

import '../screen/StudyPage.dart';
import '../screen/bottom_nagivation_bar.dart';
// import '../screen/mainPage.dart';
import '../screen/employment_filter.dart';
import '../screen/noticeboard.dart';
import '/screen/notice_employment.dart';
import '/screen/join_screen.dart';
// import 'collection.dart';
// import 'myPage.dart';
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
      ),
    );
  }
}
