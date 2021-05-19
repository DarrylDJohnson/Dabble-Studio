import 'package:flutter/material.dart';

class SectionSliver extends StatelessWidget {
  final Widget child;
  final double height;
  final Alignment contentAlignment;
  final double contentFractionalWidth;

  final Color backgroundColor;

  const SectionSliver({
    Key key,
    this.backgroundColor = Colors.transparent,
    this.child = const SizedBox.shrink(),
    this.height = 1080.0,
    this.contentAlignment = Alignment.center,
    this.contentFractionalWidth = 0.9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        constraints:
        BoxConstraints(maxHeight: MediaQuery
            .of(context)
            .size
            .height * 0.9),
        child: Container(
          color: backgroundColor,
          constraints: BoxConstraints(
            maxWidth: 1920.0,
            maxHeight: height,
          ),
          child: AspectRatio(
            aspectRatio: 1920 / height,
            child: Container(
              alignment: contentAlignment,
              constraints: BoxConstraints(
                  maxWidth: 1440.0
              ),
              child: FractionallySizedBox(
                widthFactor: contentFractionalWidth,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}