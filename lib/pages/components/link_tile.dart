import 'package:dabble_studio/models/link.dart';
import 'package:dabble_studio/pages/components/link_button.dart';
import 'package:flutter/material.dart';

class LinkTile extends StatelessWidget {
  final List<Link> links;
  final Color color;

  const LinkTile({
    Key key,
    this.links = const [],
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        spacing: 8.0,
        children: List.generate(
          links.length,
          (index) => LinkButton(
            color: color,
            link: links[index],
          ),
        ),
      ),
    );
  }
}
