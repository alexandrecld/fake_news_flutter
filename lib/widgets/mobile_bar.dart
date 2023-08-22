import 'package:flutter/material.dart';

import 'branding.dart';

class PhoneBar extends AppBar {
  PhoneBar({super.key})
      : super(
    title: const Branding(),
    centerTitle: true,
    backgroundColor: pinkColor,
  );
}
