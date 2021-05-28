import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/ui/components/image_background.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class HeroSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 512.0,
        child: ImageBackground(
          image: RotatedBox(
            quarterTurns: 1,
            child: Image.asset(
              "assets/images/hero_bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's grow your\n"
                  "business with\n"
                  "Flutter.",
                  style: kHeaderTextStyle,
                ),
                SizedBox(
                  height: 16.0,
                ),
                CallToActionButton(
                  "Get Started",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
