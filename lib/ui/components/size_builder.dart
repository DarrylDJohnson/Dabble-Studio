import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef void OnWidgetSizeChange(Size size);

class MeasureSizeRenderObject extends RenderProxyBox {
  Size oldSize;
  final OnWidgetSizeChange onChange;

  MeasureSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}

class MeasureSize extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange onChange;

  const MeasureSize({
    Key key,
    @required this.onChange,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MeasureSizeRenderObject(onChange);
  }
}

class SizeBuilder extends StatefulWidget {

  final Widget child;
  final Widget Function(Size size, Widget child) builder;

  const SizeBuilder({
    Key key,
    this.builder,
    this.child,
  }) : super(key: key);

  @override
  _SizeBuilderState createState() => _SizeBuilderState();
}

class _SizeBuilderState extends State<SizeBuilder> {
  Size _size;

  @override
  Widget build(BuildContext context) {
    return MeasureSize(
      onChange: (size) => setState(() => _size = size),
      child: widget.child,
    );
  }
}
