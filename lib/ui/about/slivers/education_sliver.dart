import 'package:dabble_studio/ui/about/components/about_tile.dart';
import 'package:dabble_studio/ui/components/sliver_section.dart';
import 'package:flutter/material.dart';

class EducationSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      children: [
        ListTile(
          title: Text(
            "Education",
            style: TextStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
        AboutTile.list(
          assetName: "assets/logos/uic.png",
          title: "University of Illinois at Chicago",
          children: [
            ListTile(
              title: Text("Major in Finance"),
            ),
            ListTile(
              title: Text("Minor in Information Decision Sciences"),
            ),
          ],
        ),
        AboutTile(
          assetName: "assets/logos/sicp.png",
          title: "Saint Ignatius College Prep",
        )
      ],
    );
  }
}
