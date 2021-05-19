import 'package:dabble_studio/models/link.dart';
import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:dabble_studio/pages/components/link_tile.dart';
import 'package:flutter/material.dart';

class ContactSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSliver.list(
      backgroundColor: Colors.grey.shade900,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kToolbarHeight),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white),
                children: [
                  TextSpan(text: "Ready to get started? "),
                  TextSpan(
                    text: "Let's connect!",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            spacing: 16.0,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                  children: [
                    TextSpan(
                      text: "Dabble",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                    TextSpan(
                      text: "Studio",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Text(
                "Chicago, IL",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white70,
                  fontSize: 20.0,
                ),
              ),
              LinkTile(
                links: contacts,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
