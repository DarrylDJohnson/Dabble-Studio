import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final List<GridItem> items;
  final int gridColumns;
  final int gridRows;

  const Grid({
    Key key,
    @required this.gridColumns,
    @required this.gridRows,
    this.items = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _width = constraints.maxWidth;
        final _height = constraints.maxHeight;

        return Stack(
          children: List.generate(items.length, (index) {
            var _position = items[index].position;

            return Positioned(
              left: (_position.rowStart - 1 / gridRows) * _width,
              top: (_position.columnStart - 1) / gridColumns * _height,
              right: (_position.rowEnd) / gridRows * _width,
              bottom: (_position.columnEnd / gridColumns) * _height,
              child: items[index].child,
            );
          }),
        );
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final GridPosition position;
  final Widget child;

  const GridItem({
    Key key,
    this.position,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class GridPosition {
  final int rowStart;
  final int rowEnd;
  final int columnStart;
  final int columnEnd;

  GridPosition(
    this.rowStart,
    this.rowEnd,
    this.columnStart,
    this.columnEnd,
  );
}
