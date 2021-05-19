import 'package:flutter/material.dart';

class AboutMeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1000.0),
            topRight: Radius.circular(1000.0),
            bottomRight: Radius.circular(1000.0),
          ),
        ),
        child: Image.asset(
          "assets/images/darryljohnson.png",
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
