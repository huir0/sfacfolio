import 'package:flutter/material.dart';

class StudyChoice extends StatefulWidget {
  const StudyChoice({super.key});

  @override
  State<StudyChoice> createState() => _StudyChoiceState();
}

class _StudyChoiceState extends State<StudyChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 312,
            height: 284,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20))));
  }
}
