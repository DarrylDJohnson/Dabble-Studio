import 'package:flutter/material.dart';

class HeroSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.9,
        ),
        child: AspectRatio(
          aspectRatio: 1920 / 1080,
          child: Row(
            children: [
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor),
                                ),
                                TextSpan(text: "your\n"),
                                TextSpan(text: "business "),
                                TextSpan(
                                  text: "together \n",
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor),
                                ),
                                TextSpan(text: "with "),
                                TextSpan(
                                  text: "Flutter.",
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor),
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
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/hero_bg.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
