import 'package:dabble_studio/pages/about/slivers/experience_sliver.dart';
import 'package:dabble_studio/pages/components/page_scaffold.dart';
import 'package:dabble_studio/ui/pages/about/slivers/education.dart';
import 'package:flutter/material.dart';

import 'slivers/hero.dart';
import 'slivers/name.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: CustomScrollView(
        slivers: [
          HeroSliver(),
          NameSliver(),
          SliverPadding(padding: EdgeInsets.all(24)),
          EducationSliver(),
          ExperienceSliver(),
        ],
      ),
    );
  }
}
