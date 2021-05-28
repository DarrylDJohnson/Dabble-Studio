import 'package:flutter/material.dart';

extension MediaQueryExt on MediaQueryData {
  bool widerThan(double width) => this.size.width > width;
}
