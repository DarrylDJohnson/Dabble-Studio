import 'package:dabble_studio/ui/about/slivers/education_sliver.dart';
import 'package:dabble_studio/ui/about/slivers/experience_sliver.dart';
import 'package:dabble_studio/ui/components/page_scaffold.dart';
import 'package:dabble_studio/ui/contact/slivers/contact_sliver.dart';
import 'package:dabble_studio/ui/footer/footer.dart';
import 'package:flutter/material.dart';

import 'slivers/darryl_johnson_sliver.dart';
import 'slivers/language_sliver.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      slivers: [
        DarrylJohnsonSliver(),
        ExperienceSliver(),
        EducationSliver(),
        LanguageSliver(),
        ContactSliver(),
        Footer(),
      ],
    );
  }
}
