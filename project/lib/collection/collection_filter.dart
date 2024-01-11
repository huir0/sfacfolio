import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/portfolio/dropdown.dart';

class CollectionFilter extends StatefulWidget {
  @override
  _CollectionFilter createState() => _CollectionFilter();
}

class _CollectionFilter extends State<CollectionFilter> {
  String view_type = 'assets/images/Sfaclog/One_view.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 360,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // 필터 오픈
            },
            child: Container(
              width: 34,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: Color(0xFFE6E6E6),
                ),
              ),
              child: Center(
                child: SvgPicture.asset('assets/icons/filter/default.svg'),
              ),
            ),
          ),
          Container(width: 76, height: 32, child: DropDown()),
        ],
      ),
    );
  }
}
