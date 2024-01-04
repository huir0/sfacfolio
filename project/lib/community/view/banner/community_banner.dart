import 'dart:async';

import 'package:flutter/material.dart';

class Custom_Banner extends StatefulWidget {
  @override
  Custom_banner createState() => Custom_banner();
}

class Custom_banner extends State<Custom_Banner> {
  Map<String, Image> image_slot = {};
  Map<String, Widget> slot_icon = {};
  Map<String, bool> slot_active = {};
  int now_page = 0;
  final PageController page_control = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Image_slot();
    Page_timer();
    Slot_Active();
  }

  void Image_slot() {
    for (int i = 1; i < 6; i++) {
      // 이미지 담는 map
      image_slot['image_$i'] =
          Image.asset('assets/images/community/noticeboard/banner_$i.png');
      // 이미지 선택시 하단 아이콘 활성화 map
      slot_active['image_$i'] = false;
      // 하단 아이콘 map
    }
    // 첫 슬롯 활성화
    slot_active['image_1'] = true;
  }

  void Slot_Active() {
    for (int i = 1; i < 6; i++) {
      slot_icon['slot_$i'] = Container(
        width: 4,
        height: 4,
        margin: EdgeInsets.only(right: i != 5 ? 4 : 0),
        child: CircleAvatar(
          backgroundColor:
              Color(slot_active['image_$i'] ?? false ? 0xFFFFFFFF : 0xFF808080),
        ),
      );
    }
  }

  void Page_timer() {
    Timer.periodic(
      Duration(seconds: 5),
      (Timer timer) {
        if (now_page < image_slot.length - 1) {
          setState(() {
            now_page++;
          });
        } else {
          setState(() {
            now_page = 0;
          });
        }
        page_control.animateToPage(
          now_page,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
        Slot_Active();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 172,
      child: Stack(
        children: [
          PageView.builder(
            controller: page_control,
            itemCount: image_slot.length,
            onPageChanged: (index) {
              if (index == image_slot.length) {
                page_control.jumpToPage(0);
              }
              setState(() {
                slot_active.forEach((key, value) {
                  slot_active[key] = false;
                });
                slot_active['image_${index + 1}'] = true;
              });
              Slot_Active();
              now_page = index;
            },
            itemBuilder: (BuildContext context, int index) {
              String key = image_slot.keys.elementAt(index % image_slot.length);
              Widget value = image_slot[key]!;
              return Column(
                children: [value],
              );
            },
          ),
          Container(
            width: 360,
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: slot_icon.values.toList()),
          ),
        ],
      ),
    );
  }
}
