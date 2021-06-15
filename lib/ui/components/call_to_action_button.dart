import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class CallToActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CallToActionButton(
    this.text, {
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => StadiumBorder(),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.lightBlue,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: Text(
          text.toUpperCase(),
          style: kCallToActionButtonTextStyle,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
