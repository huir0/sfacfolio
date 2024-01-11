import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:team5/utill/color.dart';

class followlist extends StatefulWidget {
  @override
  _followlistState createState() => _followlistState();
}

class _followlistState extends State<followlist> {
  Color _borderColor1 = AppColor.Neutral5;
  Color _borderColor2 = AppColor.Neutral5;
  Color _borderColor3 = AppColor.Neutral5;
  Color _borderColor4 = AppColor.Neutral5;
  Color _borderColor5 = AppColor.Neutral5;

  String currentImagePath1 =
      'assets/portfolioimage/portfolio/following/profile1.png';
  String currentImagePath2 =
      'assets/portfolioimage/portfolio/following/profile2.png';
  String currentImagePath3 =
      'assets/portfolioimage/portfolio/following/profile3.png';
  String currentImagePath4 =
      'assets/portfolioimage/portfolio/following/profile4.png';
  String currentImagePath5 =
      'assets/portfolioimage/portfolio/following/profile5.png';

  void changeImage1() {
    setState(() {
      currentImagePath1 =
          'assets/portfolioimage/portfolio/followingselect/profile.png';
      currentImagePath2 =
          'assets/portfolioimage/portfolio/followingselect/profile2.png';
      currentImagePath3 =
          'assets/portfolioimage/portfolio/followingselect/profile3.png';
      currentImagePath4 =
          'assets/portfolioimage/portfolio/followingselect/profile4.png';
      currentImagePath5 =
          'assets/portfolioimage/portfolio/followingselect/profile5.png';
    });
  }

  void changeImage2() {
    setState(() {});
  }

  void changeImage3() {
    setState(() {});
  }

  void changeImage4() {
    setState(() {});
  }

  void changeImage5() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            buildImageColumn(currentImagePath1, '스튜디오 별말씀', changeImage1),
            SizedBox(width: 10),
            buildImageColumn(currentImagePath2, 'mareykrap', changeImage2),
            SizedBox(width: 10),
            buildImageColumn(currentImagePath3, 'BOONGBOONG', changeImage3),
            SizedBox(width: 10),
            buildImageColumn(currentImagePath4, '두다디자인', changeImage4),
            SizedBox(width: 10),
            buildImageColumn(currentImagePath5, '제스타이프', changeImage5),
          ],
        ),
      ),
    );
  }

  Column buildImageColumn(String imagePath, String text, VoidCallback onTap) {
    Color borderColor;
    if (imagePath == currentImagePath1) {
      borderColor = _borderColor1;
    } else if (imagePath == currentImagePath2) {
      borderColor = _borderColor2;
    } else if (imagePath == currentImagePath3) {
      borderColor = _borderColor3;
    } else if (imagePath == currentImagePath4) {
      borderColor = _borderColor4;
    } else if (imagePath == currentImagePath5) {
      borderColor = _borderColor5;
    }

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: _borderColor1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
