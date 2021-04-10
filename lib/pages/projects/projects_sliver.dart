import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

import 'components/project_card.dart';

class ProjectsSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _buildList() {
      List<Widget> list = List.generate(
        projects.length,
        (index) => ProjectCard(project: projects[index]),
      );

      list.add(
        Container(
          height: 256.0,
          width: 512.0,
          child: ElevatedButton(
            child: Text(
              'View all projects',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            onPressed: () => Navigator.of(context).pushNamed(projectRoute),
          ),
        ),
      );
      return list;
    }

    return BaseSliver.list(
      children: [
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline4,
            children: [
              TextSpan(
                text: "Our most recent ",
              ),
              TextSpan(
                text: "projects.",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 24.0,
            spacing: 24.0,
            children: _buildList(),
          ),
        ),
      ],
    );
  }
}
