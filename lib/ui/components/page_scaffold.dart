import 'package:flutter/material.dart';

import 'appbar.dart';
import 'drawer.dart';

class PageScaffold extends StatelessWidget {
  final List<Widget> slivers;

  const PageScaffold({
    Key key,
    @required this.slivers,
  }) : super(key: key);

  _buildSlivers() {
    List<Widget> results = [];
    results.add(AppBarSliver());
    results.addAll(slivers);

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: drawer(),
      body: CustomScrollView(
        slivers: _buildSlivers(),
      ),
    );
  }
}