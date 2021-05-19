import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

appbar() {
  return MyAppBar();
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  _buildLogo(context) => TextButton(
        onPressed: () => Navigator.of(context).popAndPushNamed(homeRoute),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Theme.of(context).textTheme.headline6,
            children: [
              TextSpan(
                text: "Dabble",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              TextSpan(
                text: "Studio",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      );

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context).settings.name;

    return AppBar(
      elevation: 0.0,
      textTheme: Theme.of(context).textTheme,
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leadingWidth: MediaQuery.of(context).size.width < 720 ? 72.0 : 172.0,
      leading: MediaQuery.of(context).size.width < 720
          ? IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
          : _buildLogo(context),
      title: MediaQuery.of(context).size.width < 720
          ? _buildLogo(context)
          : Wrap(
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
                  onPressed: () =>
                      Navigator.of(context).popAndPushNamed(homeRoute),
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
                TextButton(
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: route == contactRoute
                          ? Theme.of(context).accentColor
                          : Colors.black,
                    ),
                  ),
                  onPressed: () =>
                      Navigator.of(context).popAndPushNamed(contactRoute),
                ),
              ],
            ),
    );
  }
}
