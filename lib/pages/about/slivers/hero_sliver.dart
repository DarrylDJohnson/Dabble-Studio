import 'package:dabble_studio/pages/components/base_sliver.dart';
import 'package:flutter/material.dart';

class HeaderSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSliver(
      child: Wrap(
        alignment: WrapAlignment.center,

        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            constraints: BoxConstraints(
              minWidth: 320,
              maxWidth: 640,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Hi, my name is",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  subtitle: RichText(
                    maxLines: null,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(
                          text: "Darryl",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "Johnson",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                ListTile(
                  title: RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(
                          text: "I'm a software developer who specializes in ",
                        ),
                        TextSpan(
                          text: "Flutter + Firebase.",
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            constraints: BoxConstraints(
              minWidth: 320,
              maxWidth: 640,
            ),
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Image.asset(
                "images/darryljohnson.png",
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
