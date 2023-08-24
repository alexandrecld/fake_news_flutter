import 'package:flutter/material.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
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
