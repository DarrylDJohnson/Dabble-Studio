import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String text;
  final TextStyle style;

  const TextBlock(
    this.text, {
    this.style,
    Key key,
  }) : super(key: key);

  Size get size {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: style,
      ),
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0.0,
        maxWidth: double.infinity,
      );

    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var _textWidth = size.width > 0 ? size.width : 1;
        var _width = constraints.maxWidth > 0 ? constraints.maxWidth : 1;
        return Text(
          text,
          style: style,
          textScaleFactor: _width*0.9/_textWidth,
        );
      },
    );
  }
}
