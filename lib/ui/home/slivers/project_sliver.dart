import 'package:dabble_studio/ui/components/action_button.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

class ProjectSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            MediaQuery.of(context).size.width > kMobileWidth ? 2 : 1,
      ),
      delegate: SliverChildListDelegate(
        [
          Center(
            child: ActionButton(
              "View more projects",
              onPressed: () => Navigator.of(context).pushNamed(projectRoute),
            ),
          ),
        ],
      ),
    );
  }
}
