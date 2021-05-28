import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  final Widget image;
  final Widget child;

  const ImageBackground({Key key, this.image, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: image),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}
