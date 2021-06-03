import 'package:flutter/material.dart';

class SectionSliver extends StatelessWidget {

  final List<Widget> children;

  const SectionSliver({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 800.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
