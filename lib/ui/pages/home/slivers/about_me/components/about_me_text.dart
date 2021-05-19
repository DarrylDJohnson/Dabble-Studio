import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutMeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 25.sp, color: Colors.grey.shade900),
                children: [
                  TextSpan(text: "I'm "),
                  TextSpan(
                    text: "Darryl Johnson,\n",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  TextSpan(text: "Developer & Designer"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.sp),
            ),
            Text(
              "I am a Flutter developer based in Chicago, IL. I majored in Finance, minored in Information Decision Sciences and worked in sales. Now, I'm ready to tackle software development with both a technical and business perspective.",
              style: TextStyle(fontSize: 12.sp),
            ),
            Padding(
              padding: EdgeInsets.all(4.sp),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed(aboutRoute),
              child: Text(
                "Learn more about me",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
          ],
        );
      },
    );
  }
}
