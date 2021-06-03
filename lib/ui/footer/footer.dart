import 'dart:ui';

import 'package:dabble_studio/ui/components/contact_button.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.grey.shade900,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  "dabble studio",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "Chicago, IL",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Colors.white70,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactButton.gmail(brightness: Brightness.light),
                  ContactButton.linkedIn(brightness: Brightness.light),
                  ContactButton.github(brightness: Brightness.light),
                  ContactButton.stackOverflow(brightness: Brightness.light),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
