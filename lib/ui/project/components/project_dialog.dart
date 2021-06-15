import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/ui/components/appbar.dart';
import 'package:dabble_studio/ui/components/page_scaffold.dart';
import 'package:dabble_studio/ui/components/sliver_scaffold.dart';
import 'package:dabble_studio/ui/project/components/project_links.dart';
import 'package:flutter/material.dart';

showProjectDialog(BuildContext context, Project project) {
  showDialog(
      context: context,
      builder: (context) {
        return ProjectDialog(project);
      });
}

class ProjectDialog extends StatelessWidget {
  final Project project;

  const ProjectDialog(this.project);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxWidth: 1000.0,
            ),
            child: Image.asset(
              project.asset,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListTile(
            title: Text(project.title),
            subtitle: Text(project.description),
          ),
        ),
        SliverToBoxAdapter(
          child: Visibility(
            visible: project.apis.isNotEmpty,
            child: ListTile(
              title: Text("APIs"),
              subtitle: Text(project.apis.toString()),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Visibility(
            visible: project.links.isNotEmpty,
            child: ListTile(
              title: Text(
                "View on",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ProjectLinks(project),
        ),
      ],
    );
  }
}
