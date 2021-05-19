// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactButton extends StatelessWidget {
  final IconData iconData;
  final String url;

  const ContactButton({
    Key key,
    this.iconData,
    this.url,
  }) : super(key: key);

  ContactButton.gmail()
      : iconData = MdiIcons.gmail,
        url = "mailto:djohnson@dabble.studio";

  ContactButton.linkedIn()
      : iconData = MdiIcons.linkedin,
        url = "https://www.linkedin.com/in/darryldjohnson";

  ContactButton.github()
      : iconData = MdiIcons.github,
        url = "https://www.github.com/darryldjohnson";

  ContactButton.stackOverflow()
      : iconData = MdiIcons.stackOverflow,
        url = "https://stackoverflow.com/users/story/6477796";

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => html.window.open(url, url),
      icon: Icon(
        iconData,
        size: 20.0,
        color: Colors.black26,
      ),
    );
  }
}
