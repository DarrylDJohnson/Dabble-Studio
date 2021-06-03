import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  final String label;
  final String hint;
  final int maxLines;
  final double elevation;
  final Color backgroundColor;
  final TextEditingController controller;

  const ContactTextField({
    Key key,
    @required this.label,
    this.hint,
    this.maxLines = 1,
    this.elevation = 0.0,
    this.backgroundColor = Colors.transparent,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: kContactLabelTextStyle,
      ),
      subtitle: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0,
        ),
        child: Material(
          color: backgroundColor,
          elevation: elevation,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: TextField(
              controller: controller,
              maxLines: maxLines,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
