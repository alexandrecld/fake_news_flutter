import 'package:flutter/material.dart';

enum ScreenSize {
  small,
  medium,
  large,
}

class Responsive {
  double minPoint = 640;
  double maxPoint = 1024;

  ScreenSize getScreenSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > minPoint) {
      return ScreenSize.large;
    } else if (size.width < maxPoint) {
      return ScreenSize.small;
    } else {
      return ScreenSize.medium;
    }
  }
}