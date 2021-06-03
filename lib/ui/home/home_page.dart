import 'package:dabble_studio/models/project.dart';
import '../about/slivers/darryl_johnson_sliver.dart';
import 'package:dabble_studio/ui/components/page_scaffold.dart';
import 'package:dabble_studio/ui/home/slivers/about_sliver.dart';
import 'package:dabble_studio/ui/project/components/project_grid_view.dart';
import 'package:flutter/material.dart';

import '../contact/slivers/contact_sliver.dart';
import '../footer/footer.dart';
import 'slivers/hero_sliver.dart';
import 'slivers/service_sliver.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      slivers: [
        HeroSliver(),
        ServiceSliver(),
        ProjectGridView(
          projects,
          viewMore: true,
        ),
        AboutSliver(),
        ContactSliver(),
        Footer(),
      ],
    );
  }
}
