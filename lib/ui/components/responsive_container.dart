import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final Function(BuildContext context, double width, double height) builder;

  const ResponsiveContainer({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return builder(context, constraints.maxHeight, constraints.maxWidth);
    });
  }
}

class P extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(

    );
  }
}
