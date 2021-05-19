import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/pages/components/content_tile.dart';
import 'package:dabble_studio/pages/components/link_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  const ProjectTile({
    Key key,
    this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    tileColor: Colors.white,
                    title: Text(project.title),
                    subtitle: Text(project.type),
                  ),
                  ContentTile(
                    title: "Description",
                    subtitle: project.description,
                  ),
                  ContentTile.list(
                    title: "APIs",
                    children: project.apis,
                  ),
                  ListTile(
                    title: Text(
                      "View on",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    subtitle: LinkTile(links: project.links),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.grey.shade200,
                child: Image.asset(project.asset),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
