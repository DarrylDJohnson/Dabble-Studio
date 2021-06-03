// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactButton extends StatelessWidget {
  final IconData iconData;
  final String url;
  final Brightness brightness;

  const ContactButton({
    Key key,
    this.iconData,
    this.url,
    this.brightness = Brightness.dark,
  }) : super(key: key);

  ContactButton.gmail({
    this.brightness = Brightness.dark,
  })  : iconData = MdiIcons.gmail,
        url = "mailto:djohnson@dabble.studio";

  ContactButton.linkedIn({
    this.brightness = Brightness.dark,
  })  : iconData = MdiIcons.linkedin,
        url = "https://www.linkedin.com/in/darryldjohnson";

  ContactButton.github({
    this.brightness = Brightness.dark,
  })  : iconData = MdiIcons.github,
        url = "https://www.github.com/darryldjohnson";

  ContactButton.stackOverflow({
    this.brightness = Brightness.dark,
  })  : iconData = MdiIcons.stackOverflow,
        url = "https://stackoverflow.com/users/story/6477796";

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => html.window.open(url, url),
      icon: Icon(
        iconData,
        size: 20.0,
        color: brightness == Brightness.dark ? Colors.black26 : Colors.white,
      ),
    );
  }
}
