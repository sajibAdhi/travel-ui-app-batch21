import 'package:flutter/material.dart';

class TextShadowWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Color shadowColor;
  final FontWeight? fontWeight;

  const TextShadowWidget(
      {Key? key,
      required this.color,
      required this.text,
      required this.fontSize,
      required this.shadowColor,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color,
        shadows: [
          Shadow(
            color: shadowColor,
            blurRadius: 10,
            offset: Offset.fromDirection(10),
          ),
          Shadow(
            color: Colors.white,
            blurRadius: 10,
            offset: Offset.fromDirection(-10),
          ),
        ],
      ),
    );
  }
}
