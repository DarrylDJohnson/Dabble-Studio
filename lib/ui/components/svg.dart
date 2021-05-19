import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetSvg extends StatelessWidget {
  final String assetName;
  final double height;
  final double width;

  const AssetSvg(
    this.assetName, {
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  Future<String> get svgString async =>
      (await HttpRequest.request(assetName)).response;

  Future<PictureInfo> get info async {
    return await svg.svgPictureStringDecoder(
      await svgString,
      false,
      null,
      assetName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PictureInfo>(
      future: info,
      builder: (context, infoData) {
        return infoData.hasData
            ? AspectRatio(
                aspectRatio: infoData.data.size.aspectRatio,
                child: SvgPicture.network(
                  assetName,
                  height: height,
                  width: width,
                ),
              )
            : SvgPicture.asset(
                assetName,
                height: height,
                width: width,
              );
      },
    );
  }
}
