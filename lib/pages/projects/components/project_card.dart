import 'package:dabble_studio/models/project.dart';
import 'package:dabble_studio/pages/components/link_tile.dart';
import 'package:dabble_studio/pages/projects/components/project_dialog.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({
    Key key,
    this.project,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      shape: kRoundedRectangleBorder,
      elevation: 4.0,
      child: InkWell(
        onHover: (hovering) => setState(() => _hovering = hovering),
        onTap: () => buildProjectDialog(context, widget.project),
        child: Stack(
          children: [
            Image.asset(
              widget.project.asset,
              height: 256.0,
            ),
            Positioned.fill(
              child: Visibility(
                visible: _hovering,
                child: Material(
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                  child: Center(
                    child: LinkTile(
                      links: widget.project.links,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: IgnorePointer(
                child: Material(
                  color: Colors.black87,
                  child: ListTile(
                    title: Text(
                      widget.project.title,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      widget.project.type,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
