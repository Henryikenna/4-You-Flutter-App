import 'package:flutter/material.dart';

extension WidgetSpacing on num {
  SizedBox get sbW => SizedBox(width: toDouble());
  SizedBox get sbH => SizedBox(height: toDouble());
}

String svgPath = "assets/svg";
String imagesPath = "assets/images";