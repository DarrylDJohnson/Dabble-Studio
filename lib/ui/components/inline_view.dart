import 'package:flutter/material.dart';

class InlineView extends StatelessWidget {
  final Axis axis;
  final List<Widget> children;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const InlineView({
    Key key,
    @required this.axis,
    this.children = const <Widget>[],
    this.mainAxisSize,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? Row(
            children: children,
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
          )
        : Column(
            children: children,
            mainAxisSize: mainAxisSize ?? MainAxisSize.min,
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
          );
  }
}
