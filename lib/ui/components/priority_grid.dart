import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final List<List<ResponsiveItem>> children;

  @override
  Widget build(BuildContext context) {

    List<List<int>> heights = children.

    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: List.generate(
          children.length,
          (col) => Row(
            children: List.generate(
              children[col].length,
              (row) => children[col][row],
            ),
          ),
        ),
      );
    });
  }
}

class ResponsiveItem extends StatelessWidget {
  final int priority;
  final double minWidth;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



extension ResponsiveListExtension on List<List<ResponsiveItem>>{

  List<List<int>> heights() => List.generate(this.length, (row){
    return List.generate(this[row].length, (column) => this[row][column].minHeight);
  });

}