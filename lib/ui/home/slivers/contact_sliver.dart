import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class ContactSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          height: 512.0,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Get in touch",
                  style: kHeaderTextStyle,
                ),
              )
            ],
          )),
    );
  }
}
