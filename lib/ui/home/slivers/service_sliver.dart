import 'package:dabble_studio/ui/components/action_button.dart';
import 'package:dabble_studio/ui/components/fitted_text.dart';
import 'package:dabble_studio/ui/components/sliver_scaffold.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/extensions.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

class ServiceSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverScaffold(
      height: 256.0,
      child: MediaQuery.of(context).widerThan(720)
          ? Row(
              children: [
                Text(
                  "Design.\n"
                  "Develop.\n"
                  "Deploy.",
                  style: kDarkHeaderTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Grow your business with mobile\n"
                          "and web solutions - native performance\n"
                          "from just one codebase.",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        /*
                        ActionButton(
                          "View our services",
                          onPressed: () =>
                              Navigator.of(context).pushNamed(serviceRoute),
                        ),
                         */
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedText(
                  "Design. Develop. Deploy.",
                  style: kDarkHeaderTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24.0,
                          right: 72.0,
                        ),
                        child: FittedText(
                          "Grow your business with web & mobile\n"
                          "solutions with native performance\n"
                          "from just one codebase.",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      /*
                      ActionButton(
                        "View our services",
                        onPressed: () =>
                            Navigator.of(context).pushNamed(serviceRoute),
                      ),

                       */
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
