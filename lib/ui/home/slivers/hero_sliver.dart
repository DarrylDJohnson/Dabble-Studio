import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/ui/components/sliver_scaffold.dart';
import 'package:dabble_studio/ui/contact/components/contact_dialog.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class HeroSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverScaffold.filtered(
      height: 512.0,
      background: RotatedBox(
        quarterTurns: 1,
        child: Image.asset(
          "assets/images/hero_bg.jpg",
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's grow your\n"
            "business with\n"
            "Flutter.",
            style: kDarkHeaderTextStyle,
          ),
          SizedBox(
            height: 16.0,
          ),
          CallToActionButton(
            "Get Started",
            onPressed: () => contact(context),
          ),
        ],
      ),
    );
  }
}
