import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSliver.list(
      children: [
        ListTile(
          title: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline4,
              children: [
                TextSpan(text: "We are "),
                TextSpan(
                  text: "Dabble",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: Text(
                        "We are a small business based in Chicago, IL. We build strong relationships with our clients and develop a deep understanding of their businesses to deliver custom solutions.",
                      ),
                    ),
                    TextButton(
                      child: Text("Learn More"),
                      onPressed: () =>
                          Navigator.of(context).pushNamed(aboutRoute),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Material(
                    elevation: 6.0,
                    shape: kRoundedRectangleBorder,
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "images/chicago.jpg",
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//We combine a business mindset with technology to customize solutions for your business, resulting in efficiency, structure, and easy to follow systems.
