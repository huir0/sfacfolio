import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team5/community/view/tabbar/TabBar.dart';
import 'package:team5/screen/employment_filter.dart';
import 'package:team5/screen/user_controller.dart';
import 'package:team5/utill/color.dart';

import 'employment_dummy_data.dart';
import 'specific_page.dart';

final List<String> carouselItems = [
  'assets/images/noticeofemployment/banner.png',
  'assets/images/noticeofemployment/banner.png',
  'assets/images/noticeofemployment/banner.png',
  'assets/images/noticeofemployment/banner.png',
  'assets/images/noticeofemployment/banner.png',
];

class NoticeOfEmployment extends StatefulWidget {
  NoticeOfEmployment({super.key});

  @override
  State<NoticeOfEmployment> createState() => _NoticeOfEmploymentState();
}

class _NoticeOfEmploymentState extends State<NoticeOfEmployment> {
  final ClickController clickController = Get.find();
  String dropdownValue = '최신순';
  int currentIndex = 0;
  int numPages = (dummyData.length / 5).ceil();
  int currentPage = 0;

  // 필터 바텀시트
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showBottomSheet() {
    _scaffoldKey.currentState
        ?.showBottomSheet((context) => const EmploymentFilter());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: 360,
          height: 628,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 172,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        items: carouselItems
                            .map((image) => Image.asset(image))
                            .toList(),
                        options: CarouselOptions(
                          height: 172,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                      Positioned(
                        top: 162,
                        left: 162,
                        child: DotsIndicator(
                          dotsCount: carouselItems.length,
                          position: currentIndex,
                          decorator: const DotsDecorator(
                              size: Size.square(4),
                              activeSize: Size.square(4),
                              activeColor: Colors.white,
                              spacing: EdgeInsets.all(2)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 24,
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              '지원자 많은 채용공고',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                                'assets/images/noticeofemployment/Fire_perspective_matte.png'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 242,
                        child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(width: 12),
                          scrollDirection: Axis.horizontal,
                          itemCount: dummyData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(
                                    color: Color(0xFFf5f8ff),
                                    width: 1,
                                  ),
                                ),
                              ),
                              width: 148,
                              child: GestureDetector(
                                onTap: () {
                                  Get.find<ClickController>()
                                      .clickCounts[index]++;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SpecificPage(index: index)),
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 148,
                                          height: 148,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8),
                                            ),
                                          ),
                                          child: dummyData[index]
                                                      ['thumbnail'] ==
                                                  null
                                              ? Container() // 사진 없는 경우 빈 컨테이너 표시
                                              : Image.asset(dummyData[index]
                                                  ['thumbnail']),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 8,
                                          child: IntrinsicWidth(
                                            child: Container(
                                              height: 19,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 2),
                                              alignment: Alignment.centerLeft,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Text(
                                                dummyData[index]['tag'],
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xff0059ff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 4,
                                          top: 4,
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.find<BookmarkController>()
                                                  .toggleBookmark(index);
                                            },
                                            child:
                                                GetBuilder<BookmarkController>(
                                              builder: (controller) =>
                                                  Container(
                                                height: 24,
                                                width: 24,
                                                padding: const EdgeInsets.only(
                                                  top: 4,
                                                  right: 6,
                                                  left: 6,
                                                ),
                                                child: controller
                                                        .bookmarked[index]
                                                    ? SvgPicture.asset(
                                                        'assets/icons/Bookmark_filled.svg',
                                                      )
                                                    : SvgPicture.asset(
                                                        'assets/icons/Bookmark.svg'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 8, right: 8, top: 8),
                                      child: Text(
                                        dummyData[index]['title'],
                                        style: const TextStyle(
                                            color: Color(0xff030303),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 15,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        dummyData[index]['company'],
                                        style: const TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        dummyData[index]['location'],
                                        style: const TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 41,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          '실시간 채용공고',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        height: 24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                              icon: Container(
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(21),
                                      side: BorderSide(
                                        width: 1,
                                        color: Color(0xffe6e6e6),
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 4,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/filter/default.svg',
                                  )),
                              onPressed: () {
                                // TODO: bottomsheet 추가
                                // _showBottomSheet();
                                // showModalBottomSheet(
                                //   useRootNavigator: true,
                                //   scrollControlDisabledMaxHeightRatio: 80,
                                //   context: context,
                                //   builder: (BuildContext context) {
                                //     return EmploymentFilter();
                                //   },
                                // );
                                Get.find<UserController>().toggleShowSheet();
                              },
                            ),
                            // Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: AppColor.Neutral5, width: 1),
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            height: 0.8),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: SvgPicture.asset(
                                          'assets/icons/filter/dropdown.svg'),
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1006,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: PageView.builder(
                                itemCount: numPages,
                                itemBuilder: (context, pageIndex) {
                                  return ListView.separated(
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                            const SizedBox(height: 12),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      int itemIndex = pageIndex * 5 + index;
                                      if (itemIndex >= dummyData.length) {
                                        return null;
                                      }
                                      return Container(
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9.99),
                                            side: const BorderSide(
                                              color: Color(0xffe5eeff),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                        height: 184,
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.find<ClickController>()
                                                .clickCounts[index]++;
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SpecificPage(
                                                          index: index)),
                                            );
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    height: 128,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                9.99),
                                                        topRight:
                                                            Radius.circular(
                                                                9.99),
                                                      ),
                                                    ),
                                                    child: dummyData[index]
                                                                ['longimage'] ==
                                                            null
                                                        ? Container() // 사진 없는 경우 빈 컨테이너 표시
                                                        : Image.asset(
                                                            dummyData[index]
                                                                ['longimage']),
                                                  ),
                                                  Positioned(
                                                    top: 12,
                                                    left: 12,
                                                    child: IntrinsicWidth(
                                                      child: Container(
                                                        height: 19,
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 2),
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          dummyData[index]
                                                              ['tag'],
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 10,
                                                            color: Color(
                                                                0xff0059ff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 10,
                                                    top: 10,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Get.find<
                                                                BookmarkController>()
                                                            .toggleBookmark(
                                                                index);
                                                      },
                                                      child: GetBuilder<
                                                          BookmarkController>(
                                                        builder: (controller) =>
                                                            Container(
                                                          height: 24,
                                                          width: 24,
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 4,
                                                            right: 6,
                                                            left: 6,
                                                          ),
                                                          child: controller
                                                                      .bookmarked[
                                                                  index]
                                                              ? SvgPicture
                                                                  .asset(
                                                                  'assets/icons/Bookmark_filled.svg',
                                                                )
                                                              : SvgPicture.asset(
                                                                  'assets/icons/Bookmark.svg'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 8,
                                                    left: 12,
                                                    bottom: 4),
                                                child: Text(
                                                  dummyData[index]['title'],
                                                  style: const TextStyle(
                                                      color: Color(0xff030303),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 15,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 12),
                                                    child: Text(
                                                      dummyData[index]
                                                          ['company'],
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xff999999),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    ' • ',
                                                    style: TextStyle(
                                                      color: Color(0xff999999),
                                                      fontSize: 10,
                                                      height: 1.5,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 15,
                                                    child: Text(
                                                      dummyData[index]
                                                          ['location'],
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xff999999),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    width: 12,
                                                    child: SvgPicture.asset(
                                                      'assets/icons/interaction/view.svg',
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 12,
                                                    child: Text(
                                                      clickController
                                                          .clickCounts[index]
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 12,
                                                    child: SvgPicture.asset(
                                                      'assets/icons/interaction/reply.svg',
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 12,
                                                    child: Text(
                                                      '4',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 12,
                                                    child: SvgPicture.asset(
                                                      'assets/icons/interaction/bookmark.svg',
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 12,
                                                    child: Text(
                                                      '10',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                onPageChanged: (int pageIndex) {
                                  setState(() {
                                    currentPage = pageIndex;
                                  });
                                },
                              ),
                            ),
                            Container(
                              height: 18,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.chevron_left,
                                      size: 12,
                                      color: Color(0xff0059ff),
                                    ),
                                    onPressed: () {
                                      if (currentPage > 0) {
                                        // 마지막 페이지가 아닌 경우에만
                                        setState(() {
                                          currentPage--; // 페이지를 다음으로 이동합니다.
                                        });
                                      }
                                    },
                                  ),
                                  ...List<Widget>.generate(numPages,
                                      (int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentPage = index;
                                        });
                                      },
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                            color: index == currentPage
                                                ? Color(0xff0059ff)
                                                : Color(0xff999999),
                                            letterSpacing: 30,
                                            fontSize: 12,
                                            height: 1.5),
                                      ),
                                    );
                                  }),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.chevron_right,
                                      size: 12,
                                      color: Color(0xff0059ff),
                                    ),
                                    onPressed: () {
                                      if (currentPage < numPages - 1) {
                                        // 마지막 페이지가 아닌 경우에만
                                        setState(() {
                                          currentPage++; // 페이지를 다음으로 이동합니다.
                                        });
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
