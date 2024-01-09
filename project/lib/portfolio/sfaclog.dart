import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team5/portfolio/dropdown.dart';
import 'package:team5/portfolio/respect.dart';
import 'package:team5/portfolio/sfaclog_appbar.dart';
import 'package:team5/portfolio/sfaclog_tapbar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/screen/shortpec.dart';

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
        body: Column(
          children: [
            SizedBox(height: 28),
            Container(
              width: 360,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Sfaclog_Appbar(),
            ),
            Container(
              width: 360,
              height: 48,
              child: Sfaclog_Tapbar(),
            ),
            Container(
              width: 360,
              height: 550,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Column(
                      children: [
                        // RespectPage(),
                        //          Container(
                        //   width: 360,
                        //   height: 48,
                        //   padding: EdgeInsets.symmetric(horizontal: 16),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       GestureDetector(
                        //         onTap: () {
                        //           // 필터 오픈
                        //         },
                        //         child: Container(
                        //           width: 34,
                        //           height: 32,
                        //           decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             border: Border.all(
                        //               width: 1,
                        //               color: Color(0xFFE6E6E6),
                        //             ),
                        //           ),
                        //           child: Center(
                        //             child: SvgPicture.asset(
                        //                 'assets/icons/filter/default.svg'),
                        //           ),
                        //         ),
                        //       ),
                        //       Container(
                        //         width: 110,
                        //         height: 32,
                        //         child: Row(
                        //           children: [
                        //             GestureDetector(
                        //               onTap: () {
                        //                 // 드롭다운 오픈
                        //               },
                        //               child: DropDown(),
                        //             ),
                        //             SizedBox(
                        //               width: 14,
                        //             ),
                        //             GestureDetector(
                        //               onTap: () {
                        //                 setState(() {
                        //                   if (view_type ==
                        //                       'assets/images/Sfaclog/One_view.svg') {
                        //                     view_type =
                        //                         'assets/images/Sfaclog/Multi_view.svg';
                        //                   } else {
                        //                     view_type =
                        //                         'assets/images/Sfaclog/One_view.svg';
                        //                   }
                        //                 });
                        //               },
                        //               child: Container(
                        //                 child: SvgPicture.asset(view_type),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 16,
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => Shortpec());
                        },
                        child: Container(
                          width: 116,
                          height: 46,
                          child: SvgPicture.asset(
                              'assets/images/Sfaclog/Respect/icons/Shortfac_switch.svg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // child: Column(
            //   children: [
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: TabBarView(
            //       children: [
            //         Center(
            //           child: Text('맞춤추천'),
            //         ),
            //         Center(
            //           child: Text('팔로잉'),
            //         ),
            //         Center(
            //           child: Text('리스펙'),
            //         ),
            //         Center(
            //           child: Text('직군별'),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            //   ],
            // ),

            BottomNavigationBarComponent()
          ],
        ),
      ),
    );
  }
}
