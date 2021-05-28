import 'package:flutter/material.dart';

menu(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(8.0),
      ),
    ),
    builder: (context) {
      return Menu();
    },
  );
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text("Menu"),
        ),
      ],
    );
  }
}
