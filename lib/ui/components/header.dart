import 'package:flutter/material.dart';

import 'text_block.dart';

class Header extends StatelessWidget {
  final String label;
  final String title;
  final String subtitle;
  final List<Widget> actions;

  const Header({
    Key key,
    this.label = '',
    this.title = '',
    this.subtitle = '',
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Container(
                    color: Colors.black54,
                    width: 16.0,
                    height: 2.0,
                  ),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      label,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBlock(title),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: subtitle.isNotEmpty
                    ? TextBlock(subtitle)
                    : SizedBox.shrink(),
              ),
              Row(children: actions),
            ],
          ),
        )
      ],
    );
  }
}
