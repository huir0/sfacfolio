import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project/color/colors.dart';
import 'package:project/community/view/button/bluebutton.dart';
import 'package:project/community/view/button/detailbutton.dart';
import 'package:project/community/view/button/joinbutton.dart';
import 'package:project/community/view/frame/comment.dart';
import 'package:project/community/view/frame/detail.dart';
import 'package:project/community/view/frame/frame3.dart';
import 'package:project/community/view/frame/line.dart';
import 'package:project/community/view/frame/peplejoin.dart';
import 'package:project/community/view/projectscreen/mainscreen.dart';

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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset('assets/images/Back.svg'),
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 44,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/bookmark.svg',
                            color: AppColor.Neutral40,
                          ),
                          Text(
                            '10',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    )
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
