import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/ui/components/appbar.dart';
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
    return Material(
      child: CustomScrollView(
        slivers: [
          AppBarSliver(),
          SliverToBoxAdapter(
            child: Image.asset(
              project.asset,
              fit: BoxFit.fitWidth,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              title: Text(project.title),
              subtitle: Text(project.description),
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              title: Text("APIs"),
              subtitle: Text(project.apis.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
