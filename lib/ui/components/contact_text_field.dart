import 'package:dabble_studio/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactTextField extends StatefulWidget {
  final String label;
  final String hint;
  final int maxLines;
  final double elevation;
  final Color backgroundColor;
  final TextInputType textInputType;
  final bool Function(String) validate;
  final String errorText;
  final TextEditingController controller;

  const ContactTextField({
    Key key,
    @required this.label,
    this.hint,
    this.maxLines = 1,
    this.elevation = 0.0,
    this.backgroundColor = Colors.transparent,
    this.textInputType = TextInputType.text,
    this.validate,
    this.errorText,
    this.controller,
  }) : super(key: key);

  @override
  _ContactTextFieldState createState() => _ContactTextFieldState();
}

class _ContactTextFieldState extends State<ContactTextField> {
  bool _error;

  @override
  void initState() {
    _error = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.label,
        style: kContactLabelTextStyle,
      ),
      subtitle: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0,
        ),
        child: Material(
          color: widget.backgroundColor,
          elevation: widget.elevation,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: TextField(
              controller: widget.controller,
              maxLines: widget.maxLines,
              onChanged: (text) => setState(() {
                _error = widget.validate(text);
              }),
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                hintText: widget.hint,
                errorText: _error ? widget.errorText : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = new RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }
}
