import 'package:flutter/material.dart';

export 'package:dabble_studio/utilities/constants.dart';
export 'package:dabble_studio/utilities/extensions.dart';

class SliverScaffold extends StatefulWidget {
  final double height;
  final double maxWidth;
  final Color scaffoldColor;
  final Color backgroundColorFilter;
  final Widget background;
  final Widget child;

  const SliverScaffold({
    Key key,
    this.height,
    this.maxWidth = 800.0,
    this.scaffoldColor = Colors.white,
    this.background = const SizedBox.shrink(),
    this.backgroundColorFilter = Colors.transparent,
    this.child = const SizedBox.shrink(),
  }) : super(key: key);

  SliverScaffold.filtered({
    Key key,
    this.height,
    this.maxWidth = 800,
    this.scaffoldColor = Colors.white,
    this.background = const SizedBox.shrink(),
    this.backgroundColorFilter = const Color(0xB3000000),
    this.child = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  _SliverScaffoldState createState() => _SliverScaffoldState();
}

class _SliverScaffoldState extends State<SliverScaffold> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: widget.height,
        color: widget.scaffoldColor,
        child: Stack(
          children: [
            SizedBox.shrink(),
            Positioned.fill(
              child: widget.background,
            ),
            Positioned.fill(
              child: Container(
                color: widget.backgroundColorFilter,
              ),
            ),
            Positioned.fill(
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: widget.maxWidth,
                    ),
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
