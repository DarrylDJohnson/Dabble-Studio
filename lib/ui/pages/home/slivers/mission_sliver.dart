import 'package:dabble_studio/ui/components/list_sliver.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FlutterSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      backgroundColor: Colors.lightBlue,
      child: Padding(
        padding: EdgeInsets.all(36.0),
        child: Sizer(
          builder: (BuildContext context, Orientation orientation,
              DeviceType deviceType) {
            return Text(
              "Our mission is to empower every business, large or small, with affordable & custom software solutions developed from one code base.",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.white, fontSize: 8.5.sp),
            );
          },
        ),
      ),
    );
  }
}
