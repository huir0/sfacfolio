import 'package:flutter/material.dart';
import '../../../screen/bottom_nagivation_bar.dart';
import '../appbar/AppBar.dart';
import '../button/filtericon.dart';
import '../frame/backendframe.dart';
import '../frame/frame2.dart';
import '../frame/frame2_2.dart';
import '../frame/framedesigner.dart';
import '../frame/framefont.dart';
import '../frame/graphicfont.dart';
import '../frame/serviceframe.dart';
import '../tabbar/TabBar.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: 48,
              width: 360,
              child: CustomAppBarWidget(),
            ),
            Container(
              width: 360,
              height: 40,
              child: CustomTabBar(),
            ),
            Container(
              height: 540,
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                      children: [
                        Icon(Icons.filter_list),
                        Icon(Icons.add_ic_call)
                      ],
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
              ),
            ),
            Container(
              height: 64,
              child: BottomNavigationBarComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
