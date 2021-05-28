import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
