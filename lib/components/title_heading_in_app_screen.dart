import 'package:flutter/material.dart';

class TitleHeadingInAppScreen extends StatelessWidget {
  final String titleText;
  final Color titleColor;

  const TitleHeadingInAppScreen({super.key, required this.titleText, required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 65.0,
        color: titleColor,
        fontFamily: 'Raleway ExtraBold',
      ),
    );
  }
}
