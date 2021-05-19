import 'package:dabble_studio/ui/components/section_sliver.dart';
import 'package:flutter/material.dart';

class HeroSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      contentFractionalWidth: 1.0,
      child: Row(
        children: [
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline1,
                        children: [
                          TextSpan(text: "Let's "),
                          TextSpan(
                            text: "grow ",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          TextSpan(text: "your\n"),
                          TextSpan(text: "business "),
                          TextSpan(
                            text: "together \n",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          TextSpan(text: "with "),
                          TextSpan(
                            text: "Flutter.",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                        ],
                      ),
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
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/hero_bg.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
