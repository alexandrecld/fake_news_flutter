import 'package:flutter/material.dart';

import '../constantes.dart';
import 'branding.dart';

class WebBar extends PreferredSize {
  final Size size;

  WebBar({super.key, required this.size})
      : super(
            preferredSize: Size(size.width, (size.height / 3)),
            child: Container(
              padding: const EdgeInsets.all(10),
              color: whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Branding(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: menuButtonHover(),
                    ),
                  )
                ],
              ),
            ));
}
