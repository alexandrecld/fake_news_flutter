import 'package:flutter/material.dart';
import '../constantes.dart';
import 'branding.dart';

class MobileBar extends AppBar {
  MobileBar({super.key})
      : super(
          title: const Branding(),
          centerTitle: true,
          backgroundColor: whiteColor,
        );
}
