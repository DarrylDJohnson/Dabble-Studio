import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EducationSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Material(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("Education"),
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/images/uic_logo.svg",
                height: 48.0,
              ),
              title: Text("University of Illinois at Chicago"),              subtitle: Text(
                "Bachelor of Business Administration, Major in Finance, Minor in Information Decision Sciences",
              ),
              trailing: Text("May 2020"),
            ),
            Image.asset("assets/images/uic_bg.jpg"),
          ],
        ),
      ),
    );
  }
}
