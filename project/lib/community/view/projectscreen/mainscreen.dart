import 'package:flutter/material.dart';
import 'package:project/community/view/appbar/AppBar.dart';
import 'package:project/community/view/button/filtericon.dart';
import 'package:project/community/view/frame/backendframe.dart';
import 'package:project/community/view/frame/frame2.dart';
import 'package:project/community/view/frame/frame2_2.dart';
import 'package:project/community/view/frame/framedesigner.dart';
import 'package:project/community/view/frame/framefont.dart';
import 'package:project/community/view/frame/graphicfont.dart';
import 'package:project/community/view/frame/serviceframe.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBarWidget(),
              Container(
                width: 360,
                height: 172,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
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
                  Container(
                    height: 24,
                    padding: EdgeInsets.only(left: 13),
                    child: Text(
                      '핫한 프로젝트🔥',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FrameDesigner(),
                      SizedBox(
                        width: 10,
                      ),
                      FrameFront(),
                      SizedBox(
                        width: 10,
                      ),
                      GraphicFrame(),
                      SizedBox(
                        width: 10,
                      ),
                      Serviceframe(),
                      SizedBox(
                        width: 10,
                      ),
                      BackendFrame(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                      height: 24,
                      child: Text(
                        '프로젝트 모집',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.filter_list), Icon(Icons.add_ic_call)],
              ),
              Frame2(),
              Frame2_2(
                title: '',
              ),
              Frame2(),
              Frame2(),
              SizedBox(
                width: 196,
                height: 16,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '1',
                        style: TextStyle(
                          color: Color(0xFF0059FF),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          height: 0.12,
                          letterSpacing: 30,
                        ),
                      ),
                      TextSpan(
                        text: '2345>',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                          letterSpacing: 30,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
