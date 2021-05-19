import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/pages/components/page_scaffold.dart';
import 'package:dabble_studio/ui/pages/home/slivers/project/components/project_tile.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: ListTile(
              title: Text(
                "Projects",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                ProjectTile(project: projects[index]),
            itemCount: projects.length,
          ),
        ],
      ),
    );
  }
}
