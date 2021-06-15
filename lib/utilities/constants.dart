import 'package:flutter/material.dart';

final ShapeBorder kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(4.0),
);

const kSliverConstraint = BoxConstraints(maxWidth: 512.0);

const kMobileWidth = 720.0;

final kDarkHeaderTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 40.0,
  color: Colors.white,
);
final kLightHeaderTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 40.0,
  color: Colors.black,
);

final kCallToActionButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 14.0,
  letterSpacing: 1.0,
  color: Colors.white,
);

final kActionButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 14.0,
  letterSpacing: 1.0,
  color: Colors.lightBlue,
);

final kContactLabelTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 14.0,
  letterSpacing: 1.0,
  color: Colors.black,
);