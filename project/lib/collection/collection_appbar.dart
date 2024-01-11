import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utill/color.dart';

class Collection_Appbar extends StatefulWidget {
  const Collection_Appbar({super.key});

  @override
  State<Collection_Appbar> createState() => _Collection_Appbar();
}

class _Collection_Appbar extends State<Collection_Appbar> {
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
          const Spacer(),
          Container(
            width: 24,
            height: 24,
            child: Center(
                child: SvgPicture.asset(
                    'assets/images/collection/Collection_setting.svg')),
          )
        ],
      ),
    );
  }
}
