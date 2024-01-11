import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utill/color.dart';
import '../sfaclog_filter.dart';

class BestPortfolioPage extends StatefulWidget {
  const BestPortfolioPage({super.key});

  @override
  State<BestPortfolioPage> createState() => _BestPortfolioPageState();
}

class _BestPortfolioPageState extends State<BestPortfolioPage> {
  List<Map<String, dynamic>> bestPortfolio = [
    {
      'title': 'Golodestkiy',
      'name': 'Denys El',
      'tag': '디지털아트',
      'view': '20',
      'like': '680',
    },
    {
      'title': 'Lanchonete',
      'name': 'Manoel Michael',
      'tag': '제품/패키지 디자인',
      'view': '12',
      'like': '600',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 16.25),
          height: 30,
          child: Text(
            '베스트 포트폴리오',
            style: TextStyle(
              color: AppColor.Primary100,
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 312,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 16.25, right: 16.25),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemCount: bestPortfolio.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Sfaclog/Group/Best_${index + 1}.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 168.5, left: 10),
                          width: 44,
                          height: 44,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Sfaclog/Group/Best_person_${index + 1}.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 10,
                          child: Container(
                            width: 75,
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: SvgPicture.asset(
                                    'assets/icons/Eye.svg',
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 13,
                                  height: 15,
                                  child: Text(
                                    '${bestPortfolio[index]['view']}',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: SvgPicture.asset(
                                    'assets/icons/Heart.svg',
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 19,
                                  height: 15,
                                  child: Text(
                                    '${bestPortfolio[index]['like']}',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Text(
                        bestPortfolio[index]['title'],
                        style: const TextStyle(
                            color: Color(0xff030303),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        bestPortfolio[index]['name'],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 28,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: ShapeDecoration(
                        color: AppColor.Primary10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            bestPortfolio[index]['tag'],
                            style: TextStyle(
                              color: AppColor.Primary100,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
