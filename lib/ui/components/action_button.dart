import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const ActionButton(
    this.text, {
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text.toUpperCase(),
        style: kActionButtonTextStyle,
      ),
      onPressed: onPressed,
    );
  }
}
