import 'package:flutter/material.dart';
import 'package:team5/portfolio/sfaclog_appbar.dart';

class Sfaclog extends StatefulWidget {
  @override
  _Sfaclog createState() => _Sfaclog();
}

class _Sfaclog extends State<Sfaclog> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Sfaclog_Appbar(),
          ),
          body: Column(children: []),
        ));
  }
}

// Sfaclog_Appbar
