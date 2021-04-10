import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

enum TileTheme {
  light,
  dark,
}

class AboutYouTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final TileTheme tileTheme;

  const AboutYouTile({
    Key key,
    this.icon,
    this.title = '',
    this.subtitle = '',
    this.color,
    this.tileTheme = TileTheme.light,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isLight = tileTheme == TileTheme.light;

    final _color = color ?? Theme.of(context).primaryColor;

    return Container(
      constraints: BoxConstraints(
        maxHeight: 256.0,
      ),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        color: _isLight ? Colors.white : _color,
        shape: kRoundedRectangleBorder,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Material(
                  color: _isLight ? _color : Colors.white,
                  shape: CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      icon,
                      color: _isLight ? Colors.white : _color,
                    ),
                  ),
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: _isLight ? Colors.black : Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: _isLight ? Colors.black : Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
