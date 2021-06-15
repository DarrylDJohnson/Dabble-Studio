import 'package:dabble_studio/ui/contact/slivers/contact_sliver.dart';
import 'package:flutter/material.dart';

contact(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(8.0),
      ),
    ),
    clipBehavior: Clip.hardEdge,
    builder: (context) {
      return ContactDialog();
    },
  );
}

class ContactDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        ContactSliver(),
      ],
    );
  }
}
