import 'package:dabble_studio/models/experience.dart';
import 'package:dabble_studio/pages/about/components/experience_tile.dart';
import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:flutter/material.dart';

class ExperienceSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSliver.list(
      children: [
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline4,
            children: [
              TextSpan(
                text: "",
              ),
              TextSpan(
                text: "Experience",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: developerExperience.length,
          itemBuilder: (context, index) {
            return ExperienceTile(experience: developerExperience[index]);
          },
        ),
        ListTile(
          title: Text(
            "Education",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ListTile(
          title: Text("University of Illinois at Chicago"),
          subtitle: Text(
              "Bachelor of Business Administration, Major in Finance, Minor in Information Decision Sciences"),
          trailing: Text("May 2020"),
        ),
        ListTile(
          title: Text(
            "Languages",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
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
          subtitle: Text("Fluent and Literate"),
        ),
      ],
    );
  }
}