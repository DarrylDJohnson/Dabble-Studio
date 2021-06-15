import 'package:dabble_studio/ui/components/action_button.dart';
import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  final String assetName;
  final String title;
  final Widget child;
  final Function onPressed;

  const AboutTile({
    Key key,
    this.assetName,
    this.title = '',
    this.child = const SizedBox.shrink(),
    this.onPressed,
  }) : super(key: key);

  AboutTile.list({
    Key key,
    List<Widget> children = const [],
    this.assetName,
    this.title = '',
    this.onPressed,
  })  : this.child = Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            assetName,
            height: 48.0,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child,
                Visibility(
                  visible: onPressed != null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ActionButton(
                      "Learn more",
                      onPressed: onPressed,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
