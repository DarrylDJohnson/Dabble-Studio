import 'package:dabble_studio/models/content.dart';
import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:dabble_studio/pages/home/components/about_you_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutYouSliver extends StatelessWidget {
  final List<Content> content = discussionContent;

  @override
  Widget build(BuildContext context) {
    return BaseSliver.list(
      children: [
        ListTile(
          title: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline4,
              children: [
                TextSpan(
                  text: "Enough about us. Tell us about ",
                ),
                TextSpan(
                    text: "you.",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    )),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AboutYouTile(
                icon: MdiIcons.store,
                title: "Your Business",
                subtitle:
                    "What does your business do well? In which areas can it improve?",
              ),
            ),
            Expanded(
              child: AboutYouTile(
                icon: MdiIcons.accountGroup,
                title: "Your Audience",
                subtitle:
                    "Who are the people you're looking to target with this app?",
              ),
            ),
            Expanded(
              child: AboutYouTile(
                tileTheme: TileTheme.dark,
                icon: MdiIcons.toolbox,
                title: "Your Business",
                subtitle:
                    "What does your business do well? In which areas can it improve?",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
