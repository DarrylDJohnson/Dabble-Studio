import 'package:dabble_studio/pages/components/page_scaffold.dart';
import 'package:dabble_studio/pages/contact/contact_sliver.dart';
import 'package:flutter/material.dart';

import 'slivers/about_me/about_me_sliver.dart';
import 'slivers/hero/hero_sliver.dart';
import 'slivers/mission_sliver.dart';
import 'slivers/project/project_sliver.dart';
import 'slivers/service/service_sliver.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: CustomScrollView(
        slivers: [
          HeroSliver(),
          FlutterSliver(),
          ServiceSliver(),
          SliverToBoxAdapter(
            child: Container(
              height: 24.0,
              color: Colors.grey.shade200,
            ),
          ),
          AboutMeSliver(),
          SliverToBoxAdapter(
            child: Container(
              height: 24.0,
              color: Colors.grey.shade200,
            ),
          ),
          ProjectsSliver(),
          ContactSliver(),
        ],
      ),
    );
  }
}
