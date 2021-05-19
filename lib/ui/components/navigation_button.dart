import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final Widget child;
  final String label;
  final String route;

  const NavigationButton({
    Key key,
    this.child,
    this.route,
  })  : this.label = null,
        super(key: key);

  NavigationButton.text({
    Key key,
    this.route,
    this.label,
  })  : this.child = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _route = ModalRoute.of(context).settings.name;

    return TextButton(
      child: child == null
          ? Text(
        label,
        style: TextStyle(
          color: _route == route
              ? Theme.of(context).accentColor
              : Colors.black,
        ),
      )
          : child,
      onPressed: () => Navigator.of(context).popAndPushNamed(route),
    );
  }
}
