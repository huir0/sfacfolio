import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../screen/bottom_nagivation_bar.dart';
import '../Widget/slider.dart';
import '../screen/filter_button.dart';
import '../utill/color.dart';

class EmploymentFilter extends StatefulWidget {
  const EmploymentFilter({super.key});

  @override
  State<EmploymentFilter> createState() => _EmploymentFilterState();
}

class _EmploymentFilterState extends State<EmploymentFilter> {
  final _skillController = TextEditingController();
  List<String> _category = [
    '전체',
    '개발',
    '디자인',
    '경영',
    '마케팅',
    '영업',
    '서비스',
    '설계',
    '금융',
    '제조',
    '제약',
    '교육',
    '무역',
    '법률',
    '기타'
  ];
  late List<bool> _selections;

  List<String> _texts = [];

  Widget _buildText(String text) {
    return IntrinsicWidth(
      child: Container(
        height: 36,
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 9,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: AppColor.Neutral10,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 18,
              child: Text(text),
            ),
            Container(
              width: 12,
              height: 12,
              margin: EdgeInsets.only(
                left: 4,
              ),
              child: IconButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                icon: SvgPicture.asset(
                  'assets/icons/filter/delete.svg',
                ),
                onPressed: () {
                  setState(() {
                    _texts.remove(text);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _selections = List.generate(_category.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: 'Pretendard',
        color: Colors.black,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 540,
                padding: EdgeInsets.only(top: 40),
                decoration: ShapeDecoration(
                  color: AppColor.White,
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Container(
                  height: 500,
                  padding: EdgeInsets.all(24),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24,
                          child: Text(
                            '필터 검색',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          child: Text(
                            '모집 분야',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: List.generate(
                              _category.length,
                              (index) {
                                return SelectableContainer(
                                  text: _category[index],
                                  selected: _selections[index],
                                  onTap: () {
                                    setState(() {
                                      if (index == 0) {
                                        _selections =
                                            List.generate(15, (index) => false);
                                        _selections[0] = !_selections[0];
                                      } else {
                                        _selections[0] = false;
                                        _selections[index] =
                                            !_selections[index];
                                      }
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 21,
                          child: Text(
                            '경력',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FilterCareerSlider(),
                        Container(
                          height: 21,
                          child: Text(
                            '스킬',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 36,
                          margin: EdgeInsets.symmetric(vertical: 12),
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 12,
                            top: 8,
                            bottom: 8,
                          ),
                          decoration: ShapeDecoration(
                            color: AppColor.Background5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: AppColor.Neutral10),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 262,
                                child: TextFormField(
                                  controller: _skillController,
                                  cursorColor: AppColor.Neutral40,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: '검색어를 입력해주세요.',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Pretendard',
                                      color: AppColor.Neutral40,
                                      // height: 0.8,
                                    ),
                                  ),
                                  onFieldSubmitted: (text) {
                                    setState(() {
                                      _texts.add(text);
                                      _skillController.clear();
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    if (_skillController.text.isNotEmpty) {
                                      final text = _skillController.text;
                                      setState(() {
                                        _texts.add(text);
                                        _skillController.clear();
                                        FocusScope.of(context).unfocus();
                                      });
                                    }
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/filter/search.svg',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Wrap(
                            runSpacing: 8,
                            spacing: 8,
                            children: []..addAll(_texts.map(_buildText)),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Container(
                          // height: 60,
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _selections =
                                        List.generate(15, (index) => false);
                                    _texts.clear();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.Neutral10,
                                  minimumSize: Size(102, 48),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  '초기화',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    color: AppColor.Neutral50,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.Primary100,
                                  minimumSize: Size(202, 48),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  '적용하기',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // 손잡이
              Positioned(
                top: 10,
                left: 161,
                child: Container(
                  width: 38,
                  height: 4,
                  decoration: ShapeDecoration(
                    color: AppColor.Neutral10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              )
            ],
          ),
          BottomNavigationBarComponent(),
        ],
      ),
    );
  }
}
