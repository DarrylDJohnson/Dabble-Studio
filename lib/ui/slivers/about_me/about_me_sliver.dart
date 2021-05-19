import 'package:dabble_studio/ui/components/list_sliver.dart';
import 'package:dabble_studio/ui/slivers/about_me/components/about_me_image.dart';
import 'package:dabble_studio/ui/slivers/about_me/components/about_me_text.dart';
import 'package:flutter/material.dart';

class AboutMeSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: MediaQuery.of(context).size.width < 700
            ? Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(maxWidth: 400.0),
                padding: EdgeInsets.all(48.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AboutMeImage(),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                    ),
                    AboutMeText(),
                  ],
                ),
              )
            : Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.9,
                ),
                child: AspectRatio(
                  aspectRatio: 1440.0 / 900.0,
                  child: Row(
                    children: [
                      Expanded(child: AboutMeImage()),
                      Padding(
                        padding: EdgeInsets.all(24.0),
                      ),
                      Expanded(child: AboutMeText()),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
