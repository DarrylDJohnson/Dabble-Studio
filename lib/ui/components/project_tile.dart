import 'package:dabble_studio/models/project.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  const ProjectTile({
    Key key,
    this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            project.asset,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
