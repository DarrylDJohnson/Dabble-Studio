import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/ui/components/page_scaffold.dart';
import 'package:dabble_studio/ui/contact/slivers/contact_sliver.dart';
import 'package:dabble_studio/ui/footer/footer.dart';
import 'package:dabble_studio/ui/project/components/project_grid_view.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      slivers: [
        ProjectGridView(projects),
        ContactSliver(),
        Footer(),
      ],
    );
  }
}
