import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Link {
  final String title;
  final String url;
  final IconData iconData;

  Link.gmail(this.url)
      : this.title = "Gmail",
        this.iconData = MdiIcons.email;

  Link.linkedin(this.url)
      : this.title = "LinkedIn",
        this.iconData = MdiIcons.linkedin;

  Link.github(this.url)
      : this.title = "Github",
        this.iconData = MdiIcons.github;

  Link.stackOverflow(this.url)
      : this.title = "Stack Overflow",
        this.iconData = MdiIcons.stackOverflow;

  Link.instagram(this.url)
      : this.title = "Instagram",
        this.iconData = MdiIcons.instagram;

  Link.android(this.url)
      : this.title = "Google Play Store",
        this.iconData = MdiIcons.android;

  Link.ios(this.url)
      : this.title = "Apple Store",
        this.iconData = MdiIcons.apple;

  Link.web(this.url)
      : this.title = "Web",
        this.iconData = MdiIcons.xml;
}

List<Link> contacts = [
  Link.gmail('mailto:djohnson@dabble.studio'),
  Link.linkedin('https://www.linkedin.com/in/darryldjohnson'),
  Link.github('https://www.github.com/darryldjohnson'),
  Link.stackOverflow('stackoverflow.com/users/story/6477796'),
  Link.instagram('https://www.instagram.com/dabble.studio'),
];
