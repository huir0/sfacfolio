import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:team5/database/data_controller.dart';
import 'package:team5/screen/FindokLoginPage.dart';
import 'package:team5/utill/color.dart';

class FindLoginPage extends StatefulWidget {
  const FindLoginPage({super.key});

  @override
  State<FindLoginPage> createState() => _FindLoginPageState();
}

//

//인증요청
class _FindLoginPageState extends State<FindLoginPage> {
  // bool? isVerificationCodeValid;

  // // bool isVerificationCodeValid = false;

  // Color TextFiledColor(bool? isVerificationCodeValid) {
  //   if (isVerificationCodeValid == true) {
  //     return Colors.green;
  //   } else if (isVerificationCodeValid == false) {
  //     return Colors.red;
  //   } else {
  //     return Color(0xFFFFEEEE);
  //   }
  // }

  // String verificationButtonText = '인증요청';

  // void changeVerificationButtonText() {
  //   setState(() {
  //     if (verificationButtonText == '인증요청') {
  //       verificationButtonText = '재인증';
  //     } else {
  //       verificationButtonText = '인증요청';
  //     }
  //   });
  // }

  // //통신사 버튼
  // Color _sktButtonColor = AppColor.Neutral5;
  // Color _ktButtonColor = AppColor.Neutral5;
  // Color _lgUPlusButtonColor = AppColor.Neutral5;
  // Color _aldeulButtonColor = AppColor.Neutral5;

  // void _onSKTButtonClicked() {
  //   setState(() {
  //     _sktButtonColor = AppColor.Primary100;
  //     _ktButtonColor = AppColor.Neutral5;
  //     _lgUPlusButtonColor = AppColor.Neutral5;
  //     _aldeulButtonColor = AppColor.Neutral5;
  //   });
  // }

  // void _onKTButtonClicked() {
  //   setState(() {
  //     _sktButtonColor = AppColor.Neutral5;
  //     _ktButtonColor = AppColor.Primary100;
  //     _lgUPlusButtonColor = AppColor.Neutral5;
  //     _aldeulButtonColor = AppColor.Neutral5;
  //   });
  // }

  // void _onLGUPlusButtonClicked() {
  //   setState(() {
  //     _sktButtonColor = AppColor.Neutral5;
  //     _ktButtonColor = AppColor.Neutral5;
  //     _lgUPlusButtonColor = AppColor.Primary100;
  //     _aldeulButtonColor = AppColor.Neutral5;
  //   });
  // }

  // void _onAldeulButtonClicked() {
  //   setState(() {
  //     _sktButtonColor = AppColor.Neutral5;
  //     _ktButtonColor = AppColor.Neutral5;
  //     _lgUPlusButtonColor = AppColor.Neutral5;
  //     _aldeulButtonColor = AppColor.Primary100;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       appBar: AppBar(elevation: 0, actions: [
  //         IconButton(
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //             icon: Icon(Icons.close))
  //       ]),
  //       body: SafeArea(
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 14.0),
  //           child: SingleChildScrollView(
  //             physics: ClampingScrollPhysics(),
  //             child: Column(
  //               children: [
  //                 Center(
  //                     child: Text('아이디 찾기',
  //                         style: TextStyle(
  //                             fontSize: 20,
  //                             fontWeight: FontWeight.bold,
  //                             color: AppColor.Neutral100))),
  //                 SizedBox(
  //                   height: 50,
  //                 ),
  //                 Row(
  //                   children: [
  //                     Text(
  //                       '이름',
  //                       textAlign: TextAlign.left,
  //                       style: TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.w500,
  //                           color: Colors.black),
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Container(
  //                   width: 328,
  //                   height: 48,
  //                   child: TextField(
  //                       decoration: const InputDecoration(
  //                     filled: true,
  //                     fillColor: AppColor.Neutral5,
  //                     hintText: '이메일 (아이디)',
  //                     hintStyle: TextStyle(color: AppColor.Neutral100),
  //                     border: OutlineInputBorder(
  //                         borderSide: BorderSide.none,
  //                         borderRadius:
  //                             BorderRadius.all(Radius.circular(10.0))),
  //                   )),
  //                 ),
  //                 SizedBox(
  //                   height: 30,
  //                 ),
  //                 Row(
  //                   children: [
  //                     Text(
  //                       '휴대폰 인증',
  //                       textAlign: TextAlign.left,
  //                       style: TextStyle(
  //                         fontSize: 17,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   height: 15,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Container(
  //                       width: 76,
  //                       height: 48,
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         border: Border.all(color: _sktButtonColor, width: 1),
  //                       ),
  //                       child: OutlinedButton(
  //                         onPressed: _onSKTButtonClicked,
  //                         child: Text(
  //                           'SKT',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             color: AppColor.Neutral100,
  //                           ),
  //                         ),
  //                         style: OutlinedButton.styleFrom(
  //                           minimumSize: Size.zero,
  //                           padding: EdgeInsets.zero,
  //                           side: BorderSide.none,
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 76,
  //                       height: 48,
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         border: Border.all(color: _ktButtonColor, width: 1),
  //                       ),
  //                       child: OutlinedButton(
  //                         onPressed: _onKTButtonClicked,
  //                         child: Text(
  //                           'KT',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             color: AppColor.Neutral100,
  //                           ),
  //                         ),
  //                         style: OutlinedButton.styleFrom(
  //                           minimumSize: Size.zero,
  //                           padding: EdgeInsets.zero,
  //                           side: BorderSide.none,
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 76,
  //                       height: 48,
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         border:
  //                             Border.all(color: _lgUPlusButtonColor, width: 1),
  //                       ),
  //                       child: OutlinedButton(
  //                         onPressed: _onLGUPlusButtonClicked,
  //                         child: Text(
  //                           'LG U+',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             color: AppColor.Neutral100,
  //                           ),
  //                         ),
  //                         style: OutlinedButton.styleFrom(
  //                           minimumSize: Size.zero,
  //                           padding: EdgeInsets.zero,
  //                           side: BorderSide.none,
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: 76,
  //                       height: 48,
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         border:
  //                             Border.all(color: _aldeulButtonColor, width: 1),
  //                       ),
  //                       child: OutlinedButton(
  //                         onPressed: _onAldeulButtonClicked,
  //                         child: Text(
  //                           '알뜰폰',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             color: AppColor.Neutral100,
  //                           ),
  //                         ),
  //                         style: OutlinedButton.styleFrom(
  //                           minimumSize: Size.zero,
  //                           padding: EdgeInsets.zero,
  //                           side: BorderSide.none,
  //                           shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   children: [
  //                     Container(
  //                       width: 244,
  //                       height: 48,
  //                       child: TextField(
  //                         decoration: InputDecoration(
  //                           filled: true,
  //                           fillColor: AppColor.Neutral5,
  //                           hintText: '휴대폰 번호 인증',
  //                           hintStyle: TextStyle(fontSize: 16),
  //                           border: OutlineInputBorder(
  //                             borderSide: BorderSide.none,
  //                             borderRadius:
  //                                 BorderRadius.all(Radius.circular(10.0)),
  //                           ),
  //                         ),
  //                         onChanged: (value) {},
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 10,
  //                     ),
  //                     Container(
  //                       width: 76,
  //                       height: 48,
  //                       child: TextButton(
  //                           onPressed: () {
  //                             changeVerificationButtonText();
  //                           },
  //                           child: Text(
  //                             verificationButtonText,
  //                             style: TextStyle(
  //                               color: AppColor.White,
  //                               fontSize: 14,
  //                             ),
  //                             overflow: TextOverflow.ellipsis,
  //                           ),
  //                           style: ButtonStyle(
  //                               backgroundColor: MaterialStateProperty.all(
  //                                 AppColor.Primary100,
  //                               ),
  //                               shape: MaterialStateProperty.all(
  //                                   RoundedRectangleBorder(
  //                                       borderRadius:
  //                                           BorderRadius.circular(10.0))))),
  //                     )
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Container(
  //                   width: 328,
  //                   height: 48,
  //                   child: TextField(
  //                     decoration: InputDecoration(
  //                       filled: true,
  //                       fillColor: isVerificationCodeValid == true
  //                           ? Color(0xFFE8FDEB)
  //                           : (isVerificationCodeValid == false
  //                               ? Color(0xFFFFEEEE)
  //                               : AppColor.Neutral5),
  //                       hintText: '인증번호 입력',
  //                       errorText: isVerificationCodeValid == false
  //                           ? '잘못된 인증번호 입니다. 다시 인증해주세요'
  //                           : null,
  //                       enabledBorder:
  //                           OutlineInputBorder(borderSide: BorderSide.none),
  //                     ),
  //                     style: TextStyle(
  //                       color: isVerificationCodeValid == null
  //                           ? Colors.black
  //                           : (isVerificationCodeValid == true
  //                               ? Colors.green
  //                               : Colors.red),
  //                     ),
  //                     onChanged: (value) {
  //                       setState(() {
  //                         if (value == '12345') {
  //                           isVerificationCodeValid = true;
  //                         } else {
  //                           isVerificationCodeValid = false;
  //                         }
  //                       });
  //                     },
  //                   ),
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   children: [
  //                     isVerificationCodeValid == true
  //                         ? Text(
  //                             '인증되었습니다.',
  //                             style: TextStyle(color: Colors.green),
  //                           )
  //                         : SizedBox(),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   height: 175,
  //                 ),
  //                 ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                         minimumSize: Size.fromHeight(50),
  //                         shape: BeveledRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0)),
  //                         elevation: 0,
  //                         backgroundColor: AppColor.Primary100),
  //                     onPressed: () {
  //                       Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                             builder: (context) => FindokLoginPage()),
  //                       );
  //                     },
  //                     child: Text(
  //                       '다음',
  //                       style: TextStyle(
  //                           color: AppColor.White,
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 18),
  //                     ))
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  Data_Control data_control = Data_Control(); // HJ
  Map<String, Color> button_back_colors = {};
  Map<String, Color?> button_side_colors = {};
  TextEditingController input_name = TextEditingController();
  TextEditingController input_email = TextEditingController();
  TextEditingController input_phone = TextEditingController();
  bool certification = false;

  bool next_state_1 = false;
  bool next_state_2 = false;
  bool next_state_3 = false;
  bool next_state_4 = false;
  bool next_result = false;

  int timer_set = 180;
  bool timer_state = false;
  late ValueNotifier<int> timerNotifier;

  String request_text = '인증요청';

  @override
  void initState() {
    super.initState();
    timerNotifier = ValueNotifier<int>(timer_set);
    for (int i = 1; i <= 4; i++) {
      button_back_colors['button_${i}'] = Color(0xFFF8F8F8);
      button_side_colors['button_${i}'] = Color(0xFFF8F8F8);
    }
  }

  bool Next_Check(List<bool> boollist) {
    return boollist.every((element) => element == true);
  }

  void Button_Color_Change(int button_num) {
    setState(() {
      for (String button in button_back_colors.keys) {
        button_back_colors[button] = Color(0xFFF8F8F8);
        button_side_colors[button] = Color(0xFFF8F8F8);
      }
      button_back_colors['button_${button_num}'] = Color(0xFFF5F8FF);
      button_side_colors['button_${button_num}'] = Color(0xFF0059FF);
    });
  }

  void Play_timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer_set > 0 && timer_state) {
        timer_set--;
        timerNotifier.value = timer_set;
      } else {
        timer.cancel();
        timer_state = false;
        setState(() {
          certification = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 48,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 30,
                margin: EdgeInsets.only(bottom: 50),
                child: const Center(
                  child: Text(
                    '아이디 찾기',
                    style: TextStyle(
                        color: Color(0xFF030303),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 328,
                height: 74,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '이름',
                      style: TextStyle(color: Color(0xFF030303), fontSize: 14),
                    ),
                    Container(
                      width: 328,
                      height: 48,
                      child: TextField(
                        controller: input_name,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: '이름',
                          filled: true,
                          fillColor: Color(0xFFF3F3F3),
                          hintStyle: const TextStyle(
                              fontSize: 16, color: Color(0xFF999999)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 28,
              // ),
              // Container(
              //   width: 328,
              //   height: 74,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text(
              //         '아이디',
              //         style: TextStyle(color: Color(0xFF030303), fontSize: 14),
              //       ),
              //       Container(
              //         width: 328,
              //         height: 48,
              //         child: TextField(
              //           maxLines: 1,
              //           controller: input_email,
              //           decoration: InputDecoration(
              //             hintText: '이메일 (아이디)',
              //             filled: true,
              //             fillColor: Color(0xFFF3F3F3),
              //             hintStyle: const TextStyle(
              //                 fontSize: 16, color: Color(0xFF999999)),
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(10.0),
              //                 borderSide: BorderSide.none),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 328,
                height: 74,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '휴대폰 인증',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(1);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_1'],
                                  side: BorderSide(
                                      color: button_side_colors['button_1'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  'SKT',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(2);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_2'],
                                  side: BorderSide(
                                      color: button_side_colors['button_2'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  'KT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(3);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_3'],
                                  side: BorderSide(
                                      color: button_side_colors['button_3'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  'LG U+',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Container(
                              width: 76,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Button_Color_Change(4);
                                  next_state_1 = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      button_back_colors['button_4'],
                                  side: BorderSide(
                                      color: button_side_colors['button_4'] ??
                                          Color(0xFF0059FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text(
                                  '알뜰폰',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF030303),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ]),
                    ]),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 328,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        width: 244,
                        height: 48,
                        margin: EdgeInsets.only(right: 5),
                        child: TextField(
                          maxLines: 1,
                          controller: input_phone,
                          onChanged: (text) {
                            setState(() {
                              if (text.length == 10 || text.length == 11) {
                                next_state_2 = true;
                              } else {
                                next_state_2 = false;
                              }
                            });
                          },
                          decoration: InputDecoration(
                            hintText: '휴대폰 번호 인증',
                            filled: true,
                            fillColor: Color(0xFFF3F3F3),
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Color(0xFF999999)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (next_state_2) {
                              next_state_3 = true;
                              certification = true;
                              if (timer_state) {
                                timer_set = 180;
                                timerNotifier.value = timer_set;
                              } else {
                                timer_state = true;
                                Play_timer();
                              }
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: next_state_2
                              ? Color(0xFF0059FF)
                              : Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Container(
                          width: 76,
                          height: 48,
                          child: Center(
                            child: Text(
                              certification ? '재요청' : '인증요청',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: next_state_2
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF999999),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 328,
                height: 48,
                child: Center(
                  child: TextField(
                    maxLines: 1,
                    onChanged: (text) {
                      next_state_4 = true;
                      setState(() {
                        next_result = Next_Check([
                          next_state_1,
                          next_state_2,
                          next_state_3,
                          next_state_4
                        ]);
                      });
                    },
                    decoration: InputDecoration(
                      hintText: '인증번호 입력',
                      filled: true,
                      fillColor: Color(0xFFF3F3F3),
                      hintStyle: const TextStyle(
                          fontSize: 16, color: Color(0xFF999999)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      suffixIcon: Builder(
                        builder: (context) {
                          if (certification) {
                            return ValueListenableBuilder<int>(
                              valueListenable: timerNotifier,
                              builder: (context, value, child) {
                                String timerText =
                                    '${value ~/ 60}:${(value % 60).toString().padLeft(2, '0')}';
                                return Container(
                                  padding: EdgeInsets.only(right: 16, top: 12),
                                  child: Text(
                                    timerText,
                                    style: TextStyle(
                                      color: Color(0xFFFF0000),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            return SizedBox();
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 230,
              ),
              Container(
                width: 328,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor:
                        next_result ? Color(0xFF0059FF) : Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () async {
                    // if (next_result) {
                    // String document_id = await data_control.find_password(
                    //     input_name.text, input_email.text, input_phone.text);
                    // print(document_id);
                    // if (document_id != '') {
                    Get.to(FindokLoginPage());
                    // }
                    // }
                  },
                  child: Center(
                    child: Text(
                      '다음',
                      style: TextStyle(
                          color: next_result
                              ? Color(0xFFFFFFFF)
                              : Color(0xFF999999),
                          fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
