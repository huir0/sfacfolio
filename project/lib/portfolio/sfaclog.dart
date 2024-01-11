import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screen/following.dart';
import '/portfolio/respect.dart';
import '/portfolio/sfaclog_custom_recommend.dart';



import 'group/group.dart';

class Sfaclog extends StatefulWidget {
  @override
  _Sfaclog createState() => _Sfaclog();
}

class _Sfaclog extends State<Sfaclog> {
  String view_type = 'assets/images/Sfaclog/One_view.svg';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            Center(child: Custom_recommend()),
            Center(
              child: FollowingPage(),
            ),
            Center(child: RespectPage()),
            Center(child: GroupPage()),
          ],
        ),
      ),
    );
  }
}
