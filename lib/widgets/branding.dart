import 'package:flutter/material.dart';
import '../models/responsive.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = Responsive().getScreenSize(context);
    String title = "";

    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
