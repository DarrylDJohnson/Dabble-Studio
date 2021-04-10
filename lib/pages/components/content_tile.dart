import 'package:flutter/material.dart';

class ContentTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget child;
  final List<String> children;

  ContentTile({
    @required this.title,
    @required this.subtitle,
  })  : this.child = null,
        this.children = null;

  ContentTile.list({
    @required this.title,
    @required this.children,
  })  : this.subtitle = null,
        this.child = ListView.builder(
          shrinkWrap: true,
          itemBuilder: (content, index) {
            return ListTile(
              title: Text(children[index]),
            );
          },
          itemCount: children.length,
        );

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: subtitle != null || (children != null && children.isNotEmpty),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        subtitle: child ??
            ListTile(
              title: Text(
                subtitle,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
      ),
    );
  }
}
