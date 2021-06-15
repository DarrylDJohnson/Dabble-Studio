import 'package:flutter/material.dart';

class FittedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double widthFactor;
  final TextAlign textAlign;

  const FittedText(
    this.text, {
    Key key,
    this.style,
    this.widthFactor = 1.0,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FractionallySizedBox(
            widthFactor: widthFactor,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                text,
                style: style,
                textAlign: textAlign,
              ),
            ),
          ),
        )
      ],
    );
  }
}
