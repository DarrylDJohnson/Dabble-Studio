import 'package:flutter/material.dart';

class FlexText extends StatelessWidget {
  final double widthFactor;
  final String text;
  final TextStyle style;
  final TextAlign textAlign;
  final double maxWidth;

  const FlexText(
    this.text, {
    Key key,
    this.widthFactor = 1.0,
    this.style = const TextStyle(),
    this.textAlign = TextAlign.start,
    this.maxWidth = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        minWidth: 1.0,
      ),
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Text(
          text,
          style: style,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
