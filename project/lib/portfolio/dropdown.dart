import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utill/color.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  _DropDown createState() => _DropDown();
}

class _DropDown extends State<DropDown> {
  String dropdownValue = '최신순';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.Neutral5, width: 1),
      ),
      height: 38,
      width: 76,
      child: PopupMenuButton(
        constraints: BoxConstraints(maxWidth: 76),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide.none,
        ),
        offset: Offset(16, 26),
        color: Colors.white,
        padding: EdgeInsets.zero,
        elevation: 0.3,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                dropdownValue,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, height: 0.8),
              ),
            ),
            Positioned(
              right: 0,
              child: SvgPicture.asset('assets/icons/filter/dropdown.svg'),
            ),
          ],
        ),
        onSelected: (value) {
          setState(() {
            dropdownValue = value;
          });
        },
        itemBuilder: (BuildContext) => [
          PopupMenuItem(
            value: '최신순',
            child: Center(
              child: Container(
                width: 46,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  '최신순',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    color: dropdownValue == '최신순'
                        ? Colors.black
                        : AppColor.Neutral50,
                  ),
                ),
              ),
            ),
          ),
          PopupMenuItem(
            value: '저장순',
            child: Center(
              child: Container(
                width: 46,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  '저장순',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    color: dropdownValue == '저장순'
                        ? Colors.black
                        : AppColor.Neutral50,
                  ),
                ),
              ),
            ),
          ),
          PopupMenuItem(
            value: '댓글순',
            child: Center(
              child: Container(
                width: 46,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  '댓글순',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    color: dropdownValue == '댓글순'
                        ? Colors.black
                        : AppColor.Neutral50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
