import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notice_board extends StatefulWidget {
  const Notice_board({super.key});

  @override
  Notice_Board createState() => Notice_Board();
}

class Notice_Board extends State<Notice_board> {
  Map<String, Image> image_slot = {};
  Map<String, Widget> slot_icon = {};
  Map<String, bool> slot_active = {};
  final PageController page_control = PageController(initialPage: 0);

  void Image_slot() {
    for (int i = 1; i < 6; i++) {
      // 이미지 담는 map
      image_slot['image_$i'] =
          Image.asset('assets/images/community/noticeboard/banner_$i.png');
      // 이미지 선택시 하단 아이콘 활성화 map
      slot_active['image_$i'] = false;
      // 하단 아이콘 map
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

  @override
  Widget build(BuildContext context) {
    Image_slot();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            SizedBox(
              height: 76,
            ),
            Container(
              width: 360,
              height: 172,
              child: PageView.builder(
                controller: page_control,
                scrollDirection: Axis.vertical,
                itemCount: image_slot.length,
                onPageChanged: (index) {
                  if (index == image_slot.length) {
                    page_control.jumpToPage(0);
                  }
                },
                itemBuilder: (BuildContext context, int index) {
                  String key =
                      image_slot.keys.elementAt(index % image_slot.length);
                  Widget value = image_slot[key]!;
                  return Column(
                    children: [value],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
