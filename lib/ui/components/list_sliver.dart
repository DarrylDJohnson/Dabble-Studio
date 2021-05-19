import 'package:flutter/material.dart';

class SectionSliver extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final double elevation;

  const SectionSliver({
    Key key,
    this.backgroundColor = Colors.white,
    this.child = const SizedBox.shrink(),
    this.elevation = 0.0,
  }) : super(key: key);

  SectionSliver.list({
    List<Widget> children = const [],
    this.backgroundColor = Colors.white,
    this.elevation = 0.0,
  }) : child = ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: children,
        );

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Material(
        color: backgroundColor,
        elevation: elevation,
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(
            maxWidth: 1920.0,
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
