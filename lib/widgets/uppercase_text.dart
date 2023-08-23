import 'package:flutter/material.dart';

class UppercaseText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const UppercaseText(this.text, {super.key, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: style,
      textAlign: textAlign,
    );
  }
}
