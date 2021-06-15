import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

import 'contact_button.dart';
import 'logo.dart';

class AppBarSliver extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context).settings.name;

    return SliverAppBar(
      elevation: 0.0,
      centerTitle: true,
      textTheme: Theme.of(context).textTheme,
      iconTheme: Theme.of(context).iconTheme,
      floating: true,
      pinned: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black12,
        ),
      ),
      leadingWidth: 250.0,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: MediaQuery.of(context).size.width < 720,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Logo(),
          ),
        ],
      ),
      title: Visibility(
        visible: MediaQuery.of(context).size.width > 720,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 24.0,
          children: [
            TextButton(
              child: Text(
                "Home",
                style: TextStyle(
                  color: route == homeRoute
                      ? Theme.of(context).accentColor
                      : Colors.black,
                ),
              ),
              onPressed: () => Navigator.of(context).popAndPushNamed(homeRoute),
            ),
            TextButton(
              child: Text(
                "Projects",
                style: TextStyle(
                  color: route == projectRoute
                      ? Theme.of(context).accentColor
                      : Colors.black,
                ),
              ),
              onPressed: () =>
                  Navigator.of(context).popAndPushNamed(projectRoute),
            ),
            TextButton(
              child: Text(
                "About me",
                style: TextStyle(
                  color: route == aboutRoute
                      ? Theme.of(context).accentColor
                      : Colors.black,
                ),
              ),
              onPressed: () =>
                  Navigator.of(context).popAndPushNamed(aboutRoute),
            ),
          ],
        ),
      ),
      actions: [
        ContactButton.gmail(),
        ContactButton.linkedIn(),
        ContactButton.github(),
        ContactButton.stackOverflow(),
      ],
    );
  }
}
