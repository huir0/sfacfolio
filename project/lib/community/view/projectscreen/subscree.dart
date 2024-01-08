import 'package:flutter/material.dart';
import '../button/bluebutton.dart';
import '../button/detailbutton.dart';
import '../button/joinbutton.dart';
import '../frame/comment.dart';
import '../frame/detail.dart';
import '../frame/frame3.dart';
import '../frame/line.dart';
import '../frame/peplejoin.dart';

class SubScreen extends StatelessWidget {
  const SubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.chevron_left),
                    Icon(Icons.calendar_view_month_sharp),
                  ],
                ),
              ),
              Frame3(),
              Line(),
              SizedBox(
                height: 20,
              ),
              PeopleJoin(),
              SizedBox(
                height: 10,
              ),
              Line(),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 360,
                height: 172,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner(1).png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    child: Text(
                      '상세내용',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 0.09),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Detail(),
              filterbutton(),
              Container(),
              SizedBox(
                height: 30,
              ),
              Line(),
              SizedBox(
                height: 30,
              ),
              Comment(),
            ],
          ),
        )),
      ),
    );
  }
}
