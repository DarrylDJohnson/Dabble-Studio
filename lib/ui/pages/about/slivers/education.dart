import 'package:flutter/material.dart';

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
              leading: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/University_of_Illinois_at_Chicago_circle_logo.svg/1200px-University_of_Illinois_at_Chicago_circle_logo.svg.png"),
              title: Text("University of Illinois at Chicago"),
              subtitle: Text(
                "Bachelor of Business Administration, Major in Finance, Minor in Information Decision Sciences",
              ),
              trailing: Text("May 2020"),
            ),
            Image.network("https://firebasestorage.googleapis.com/v0/b/dabble-studio.appspot.com/o/about_me_bg.jpg?alt=media&token=8f52dad7-b5a4-4d84-a3ef-d88c90b9f575"),
          ],
        ),
      ),
    );
  }
}
