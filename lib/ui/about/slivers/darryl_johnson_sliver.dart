import 'package:dabble_studio/ui/components/fitted_text.dart';
import 'package:dabble_studio/ui/components/sliver_scaffold.dart';
import 'package:flutter/material.dart';

class DarrylJohnsonSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverScaffold.filtered(
      height: 400.0,
      background: Image.asset(
        "assets/images/about_me_bg.jpg",
        fit: BoxFit.cover,
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          "assets/images/darryl_johnson.png",
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
