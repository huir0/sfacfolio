import 'package:flutter/material.dart';
import '../../utill/color.dart';

class ColorButton extends StatefulWidget {
  final Color? colorCode;
  final LinearGradient? rainbow;

  ColorButton({key, this.colorCode, this.rainbow});

  @override
  _ColorButtonState createState() => _ColorButtonState();
}

class _ColorButtonState extends State<ColorButton> {
  bool _showBorder = false;

  void _toggleBorder() {
    setState(() {
      _showBorder = !_showBorder;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleBorder,
      child: Container(
        width: 34,
        height: 34,
        child: Stack(
          children: [
            Positioned(
              left: 5,
              top: 5,
              child: Container(
                width: 24,
                height: 24,
                decoration: ShapeDecoration(
                  color: widget.colorCode ?? widget.colorCode,
                  gradient: widget.rainbow ?? widget.rainbow,
                  shape: OvalBorder(
                      side: widget.colorCode == Colors.white
                          ? BorderSide(color: AppColor.Neutral40)
                          : BorderSide.none),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 34,
                height: 34,
                decoration: ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 1,
                      color: _showBorder ? AppColor.Primary100 : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
