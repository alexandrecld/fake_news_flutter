import 'package:flutter/material.dart';

class InfoIcon extends StatelessWidget {
  final IconData icon;
  final String info;

  const InfoIcon({super.key, required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        const SizedBox(width: 10),
        Text(info, style: const TextStyle(fontSize: 18, color: Colors.black54)),
      ],
    );
  }
}
