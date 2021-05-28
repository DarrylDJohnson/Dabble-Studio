import 'package:dabble_studio/ui/components/action_button.dart';
import 'package:dabble_studio/ui/components/fitted_text.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

class ServiceSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: constraints.maxWidth > kMobileWidth
                ? Row(
                    children: [
                      Text(
                        "Design.\n"
                        "Develop.\n"
                        "Deploy.",
                        style: kHeaderTextStyle.copyWith(
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
                              ActionButton(
                                "View our services",
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(serviceRoute),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedText(
                        "Design. Develop. Deploy.",
                        style: kHeaderTextStyle.copyWith(
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
                            ActionButton(
                              "View our services",
                              onPressed: () =>
                                  Navigator.of(context).pushNamed(serviceRoute),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    ));
  }
}
