import 'package:flutter/material.dart';

import 'appbar.dart';
import 'drawer.dart';

class PageScaffold extends StatelessWidget {
  final Widget child;

  const PageScaffold({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: appbar(),
      drawer: drawer(),
      body: child,
    );
  }
}
