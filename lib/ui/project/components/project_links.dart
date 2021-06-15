import 'dart:html' as html;

import 'package:dabble_studio/models/project.dart';
import 'package:flutter/material.dart';

class ProjectLinks extends StatelessWidget {
  final Project project;

  const ProjectLinks(this.project);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        project.links.length,
        (index) {
          var link = project.links[index];

          return ListTile(
            leading: Icon(link.iconData),
            title: Text(link.title),
            onTap: () => html.window.open(link.title, link.url),
          );
        },
      ),
    );
  }
}
