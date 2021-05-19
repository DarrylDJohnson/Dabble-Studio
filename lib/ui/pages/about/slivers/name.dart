import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NameSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return Material(
            elevation: 8.0,
            child: ListTile(
              title: Text(
                "Darryl Johnson",
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 24.sp,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
