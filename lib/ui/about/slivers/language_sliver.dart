import 'package:dabble_studio/ui/about/components/about_tile.dart';
import 'package:dabble_studio/ui/components/sliver_section.dart';
import 'package:flutter/material.dart';

class LanguageSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      children: [
        ListTile(
          title: Text(
            "Skills",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        AboutTile.list(
          assetName: "assets/logos/language.png",
          title: "Languages",
          children: [
            ListTile(
              title: Text("English"),
              subtitle: Text("Native"),
            ),
            ListTile(
              title: Text("Spanish"),
              subtitle: Text("Fluent"),
            ),
            ListTile(
              title: Text("French"),
              subtitle: Text("Fluent & Literate"),
            )
          ],
        )
      ],
    );
  }
}
