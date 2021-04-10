import 'package:dabble_studio/pages/components/appbar.dart';
import 'package:flutter/material.dart';

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
      appBar: appbar(),
      drawer: drawer(),
      body: child,
    );
  }
}
