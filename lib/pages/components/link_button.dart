import 'dart:html' as html;

import 'package:dabble_studio/models/link.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final Link link;
  final Color color;

  const LinkButton({
    Key key,
    @required this.link,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      shape: CircleBorder(),
      child: IconButton(
        icon: Icon(
          link.iconData,
          color: color,
          size: 24.0,
        ),
        onPressed: () => html.window.open(link.url, link.title),
      ),
    );
  }
}
