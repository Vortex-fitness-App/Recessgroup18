import 'package:flutter/material.dart';

class text extends StatelessWidget {
  double fontSize;
  String titleText;
  text(this.fontSize, this.titleText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
