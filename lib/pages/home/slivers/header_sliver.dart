import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:flutter/material.dart';

class HeaderSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSliver.list(
      backgroundColor: Colors.grey.shade200,
      height: 512.0,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Theme.of(context).textTheme.headline3,
            children: [
              TextSpan(text: "Let's grow your business "),
              TextSpan(
                text: "together.",
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Contact us",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
