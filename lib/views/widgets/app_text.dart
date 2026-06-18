import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final double? height;


  const AppText(this.text, {this.style, this.textAlign,this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(height:height),
      textAlign: textAlign,
      );
  }
}
