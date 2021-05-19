import 'package:dabble_studio/pages/about/slivers/experience_sliver.dart';
import 'package:dabble_studio/pages/components/page_scaffold.dart';
import 'package:flutter/material.dart';

import 'slivers/header_sliver.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: CustomScrollView(
        slivers: [
          HeaderSliver(),
          ExperienceSliver(),
        ],
      ),
    );
  }
}
