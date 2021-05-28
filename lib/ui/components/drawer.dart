import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

import 'logo.dart';

drawer({int position}) => MenuDrawer();

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context).settings.name;

    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: Logo(),
          ),
          ListTile(
            selected: route == homeRoute,
            title: Text("Home"),
            onTap: () => Navigator.of(context).popAndPushNamed(homeRoute),
          ),
          ListTile(
            selected: route == projectRoute,
            title: Text("Projects"),
            onTap: () => Navigator.of(context).popAndPushNamed(projectRoute),
          ),
          ListTile(
            selected: route == aboutRoute,
            title: Text("About me"),
            onTap: () => Navigator.of(context).popAndPushNamed(aboutRoute),
          ),
          ListTile(
            selected: route == contactRoute,
            title: Text("Contact"),
            onTap: () => Navigator.of(context).popAndPushNamed(contactRoute),
          ),
        ],
      ),
    );
  }
}
