import 'package:dabble_studio/models/service.dart';
import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  final Color color;

  const ServiceCard({
    Key key,
    this.service,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.0,
      width: 156.0,
      child: Material(
        elevation: 4.0,
        shape: kRoundedRectangleBorder,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(service.asset),
            ListTile(
              title: Text(
                service.title ?? '',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
