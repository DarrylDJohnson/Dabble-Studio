import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/ui/components/action_button.dart';
import 'package:dabble_studio/ui/project/components/project_tile.dart';
import 'package:dabble_studio/utilities/extensions.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

class ProjectGridView extends StatelessWidget {
  final List<Project> projects;
  final bool viewMore;

  const ProjectGridView(
    this.projects, {
    this.viewMore = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).widerThan(720) ? 2 : 1,
        childAspectRatio: 5 / 3,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => index < projects.length
            ? ProjectTile(
                projects[index],
              )
            : Center(
                child: ActionButton(
                  "View more projects",
                  onPressed: () =>
                      Navigator.of(context).pushNamed(projectRoute),
                ),
              ),
        childCount: projects.length + (viewMore ? 1 : 0),
      ),
    );
  }
}
