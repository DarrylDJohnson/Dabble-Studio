import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServiceTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final Function onPressed;

  const ServiceTile({
    Key key,
    this.title = "",
    this.subtitle = "",
    this.iconData,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250.0),
      child: AspectRatio(
          aspectRatio: 1.0,
          child: Sizer(
            builder: (BuildContext context, Orientation orientation,
                DeviceType deviceType) {
              return Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(
                      iconData,
                      color: Colors.grey.shade900,
                      size: 48.0,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      subtitle: Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
