import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/message.dart';
import '../Widget/notification.dart';
import '../utill/color.dart';

class Mypage_Appbar extends StatefulWidget {
  const Mypage_Appbar({super.key});

  @override
  State<Mypage_Appbar> createState() => _Mypage_Appbar();
}

class _Mypage_Appbar extends State<Mypage_Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 48,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 16,
            child: SvgPicture.asset('assets/icons/sfaclog/Sfaclog.svg'),
          ),
          const SizedBox(
            width: 12.6,
          ),
          const Spacer(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset('assets/images/Search.svg')),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MessageNotification()));
                  },
                  child: Container(
                      width: 24,
                      height: 24,
                      child: SvgPicture.asset('assets/images/Chat.svg')),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationComponent()));
                  },
                  child: Container(
                      width: 24,
                      height: 24,
                      child: SvgPicture.asset('assets/images/Alarm.svg')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
