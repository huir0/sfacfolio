import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team5/portfolio/respect.dart';

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
            Center(child: RespectPage()),
            Center(
              child: Text('맞춤추천'),
            ),
            Center(child: RespectPage()),
            Center(child: GroupPage()),
          ],
        ),
      ),
    );
  }
}
