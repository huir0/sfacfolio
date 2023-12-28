import 'package:flutter/material.dart';

class OnBoardingFirstPage extends StatefulWidget {
  const OnBoardingFirstPage({super.key});

  @override
  State<OnBoardingFirstPage> createState() => _OnBoardingFirstPageState();
}

class _OnBoardingFirstPageState extends State<OnBoardingFirstPage> {
  int progressPage = 1;
  Color progressBar = Color(0xff337AFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Container(
            height: 24,
            width: 24,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios, size: 11.5,),
            ),
          ),
        ),
        title: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: LinearProgressIndicator(
            minHeight: 8,
            borderRadius: BorderRadius.circular(5),
            color: progressBar,
            value: progressPage / 4,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(0, 0),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: progressPage.toString(),
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            TextSpan(
                text: ' / 4',
                style: TextStyle(color: Color(0xff999999), fontSize: 12))
          ])),
        ),
      ),
    );
  }
}
