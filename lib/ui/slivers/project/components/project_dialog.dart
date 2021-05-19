import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/pages/components/content_tile.dart';
import 'package:dabble_studio/pages/components/link_tile.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

buildProjectDialog(BuildContext context, Project project) => showDialog(
      context: context,
      builder: (context) => ProjectDialog(project: project),
    );

class ProjectDialog extends StatelessWidget {
  final Project project;

  const ProjectDialog({
    Key key,
    @required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Material(
          shape: kRoundedRectangleBorder,
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text(project.title),
                subtitle: Text(project.type),
              ),
              Image.asset(project.asset),
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
      ),
    );
  }
}
