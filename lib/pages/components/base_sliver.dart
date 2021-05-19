import 'package:flutter/material.dart';

class BaseSliver extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final bool isSliver;
  final Widget child;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;

  BaseSliver({
    this.backgroundColor,
    this.height,
    this.isSliver = true,
    this.child,
  })  : children = null,
        mainAxisAlignment = null;

  BaseSliver.list(
      {this.backgroundColor,
      this.height,
      this.isSliver = true,
      this.children,
      this.mainAxisAlignment = MainAxisAlignment.start})
      : child = Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          children: children,
        );

  @override
  Widget build(BuildContext context) {
    Widget _build() {
      return Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        color: backgroundColor ?? Colors.grey.shade50,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: kToolbarHeight),
          child: child,
        ),
      );
    }

    return isSliver ? SliverToBoxAdapter(child: _build()) : _build();
  }
}
