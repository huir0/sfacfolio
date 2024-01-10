import 'package:flutter/material.dart';
import 'color_button.dart';

import '../../screen/bottom_nagivation_bar.dart';
import '../../screen/filter_button.dart';
import '../../utill/color.dart';

class PortfolioFilter extends StatefulWidget {
  int index;
  PortfolioFilter({super.key, required this.index});

  @override
  State<PortfolioFilter> createState() => _PortfolioFilterState();
}

class _PortfolioFilterState extends State<PortfolioFilter> {
  late List<bool> _interestSelection;
  late List<bool> _subSelection;
  late List<bool> _colorSelection = List.filled(11, false);
  final List<String> _interestCategory = [
    '전체',
    '기획',
    '디자인',
    '개발',
    '기타',
  ];
  final List<String> _subCategory = [
    '전체',
    'UXUI',
    '영상/모션그래픽',
    '브랜딩/편집',
    '일러스트레이션',
    '디지털아트',
    '캐릭터',
    '제품/패키지',
  ];
  @override
  void initState() {
    super.initState();
    _interestSelection =
        List.generate(_interestCategory.length, (index) => false);
    _interestSelection[widget.index] = true;
    _subSelection = List.generate(_subCategory.length, (index) => false);
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
                height: 541,
                decoration: ShapeDecoration(
                  color: AppColor.White,
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
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
                          '관심 분야',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 12,
                      ),
                      // selection
                      Container(
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 12,
                          children: List.generate(
                            _interestCategory.length,
                            (index) {
                              return SelectableContainer(
                                text: _interestCategory[index],
                                selected: _interestSelection[index],
                                onTap: () {
                                  setState(() {
                                    if (index == 0) {
                                      _interestSelection =
                                          List.generate(15, (index) => false);
                                      _interestSelection[0] =
                                          !_interestSelection[0];
                                    } else {
                                      _interestSelection[0] = false;
                                      _interestSelection[index] =
                                          !_interestSelection[index];
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
                          '세부 카테고리',
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
                          runSpacing: 12,
                          children: List.generate(
                            _subCategory.length,
                            (index) {
                              return SelectableContainer(
                                text: _subCategory[index],
                                selected: _subSelection[index],
                                onTap: () {
                                  setState(() {
                                    if (index == 0) {
                                      _subSelection =
                                          List.generate(15, (index) => false);
                                      _subSelection[0] = !_subSelection[0];
                                    } else {
                                      _subSelection[0] = false;
                                      _subSelection[index] =
                                          !_subSelection[index];
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
                          '컬러',
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
                          spacing: 22,
                          runSpacing: 11,
                          children: [
                            ColorButton(
                              rainbow: LinearGradient(
                                  begin: Alignment(0.72, -0.70),
                                  end: Alignment(-0.72, 0.7),
                                  colors: [
                                    Color(0xFFFF2C2C),
                                    Color(0xFFFF7600),
                                    Color(0xFFFFE500),
                                    Color(0xFF37CA3D),
                                    Color(0xFF0059FF),
                                    Color(0xFF1100D0),
                                    Color(0xFFB505D1)
                                  ]),
                            ),
                            ColorButton(
                              colorCode: Colors.white,
                            ),
                            ColorButton(
                              colorCode: AppColor.Neutral50,
                            ),
                            ColorButton(
                              colorCode: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        child: Wrap(
                          spacing: 22,
                          runSpacing: 11,
                          children: [
                            ColorButton(
                              colorCode: Color(0xffff2c2c),
                            ),
                            ColorButton(
                              colorCode: Color(0xffFFAD33),
                            ),
                            ColorButton(
                              colorCode: Color(0xffFFE500),
                            ),
                            ColorButton(
                              colorCode: Color(0xff37CA3D),
                            ),
                            ColorButton(colorCode: AppColor.Primary100),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 44,
                      ),

                      Container(
                        height: 60,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _interestSelection = List.generate(
                                      _interestCategory.length,
                                      (index) => false);
                                  _subSelection = List.generate(
                                      _subCategory.length, (index) => false);
                                  _colorSelection =
                                      List.generate(11, (index) => false);
                                      _interestSelection[0] = true;
                                      _subSelection[0] = true;
                                      _colorSelection[0] = true;
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
                                int index = _interestSelection
                                    .indexWhere((element) => element == true);
                                Navigator.pop(context, index);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.Primary100,
                                minimumSize: Size(218, 48),
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
