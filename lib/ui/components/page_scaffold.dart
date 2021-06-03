import 'package:flutter/material.dart';

import 'appbar.dart';
import 'drawer.dart';

export 'package:dabble_studio/utilities/extensions.dart';

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
      backgroundColor: Colors.white,
      drawer: drawer(),
      body: CustomScrollView(
        slivers: _buildSlivers(),
      ),
    );
  }
}