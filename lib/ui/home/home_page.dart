import 'package:dabble_studio/ui/components/page_scaffold.dart';
import 'package:flutter/material.dart';

import 'slivers/about_sliver.dart';
import 'slivers/contact_sliver.dart';
import 'slivers/footer.dart';
import 'slivers/hero_sliver.dart';
import 'slivers/project_sliver.dart';
import 'slivers/service_sliver.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      slivers: [
        HeroSliver(),
        ServiceSliver(),
        ProjectSliver(),
        AboutSliver(),
        ContactSliver(),
        Footer(),
      ],
    );
  }
}
