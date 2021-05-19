import 'package:dabble_studio/pages/components/page_scaffold.dart';
import 'package:dabble_studio/pages/contact/contact_sliver.dart';
import 'package:dabble_studio/pages/projects/projects_sliver.dart';
import 'package:dabble_studio/pages/services/services_sliver.dart';
import 'package:flutter/material.dart';

import 'slivers/header_sliver.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: CustomScrollView(
        slivers: [
          HeaderSliver(),
          ServicesSliver(),
          ProjectsSliver(),
          ContactSliver(),
        ],
      ),
    );
  }
}
