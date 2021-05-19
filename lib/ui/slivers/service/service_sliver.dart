import 'package:dabble_studio/ui/components/list_sliver.dart';
import 'package:dabble_studio/ui/slivers/service/components/service_tile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class ServiceSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      elevation: 8.0,
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ServiceTile(
                iconData: MdiIcons.xml,
                title: "Design & Development".toUpperCase(),
                subtitle:
                    "Simple design - optimized for maintainability and maximal functionality.",
              ),
              ServiceTile(
                iconData: MdiIcons.update,
                title: "Project Management".toUpperCase(),
                subtitle: "Subscribe for maintenance - manage updates, fix bugs & get discounts on new features",
              ),
              ServiceTile(
                iconData: MdiIcons.store,
                title: "Ecommerce".toUpperCase(),
                subtitle: "Build a web and mobile web store for your business with an intuitive back office to manage products.",
              ),
            ],
          );
        },
      ),
    );
  }
}
