import 'package:dabble_studio/ui/components/call_to_action_button.dart';
import 'package:dabble_studio/ui/components/fitted_text.dart';
import 'package:dabble_studio/ui/components/image_background.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/extensions.dart';
import 'package:flutter/material.dart';

class AboutSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 512.0,
        child: ImageBackground(
          image: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/about_me_bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Visibility(
              visible: !MediaQuery.of(context).widerThan(720),
              child: Image.asset("assets/images/darryl_johnson.png"),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Visibility(
                visible: MediaQuery.of(context).widerThan(720),
                child: Expanded(
                  child: Image.asset(
                    "assets/images/darryl_johnson.png",
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MediaQuery.of(context).widerThan(720)
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end,
                    children: [
                      FittedText(
                        "Hey, my name is Darryl.\n"
                        "I'm looking forward\n"
                        "to working with you.",
                        style: kHeaderTextStyle,
                        widthFactor: 0.8,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      CallToActionButton(
                        "Learn more about me",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
