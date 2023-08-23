import 'package:flutter/material.dart';
import '../models/button_object.dart';

class HoverButton extends StatefulWidget {
  final ButtonObject buttonObject;

  const HoverButton({super.key, required this.buttonObject});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool hoverValue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: (hoverValue) ? Colors.black87 : Colors.grey,
                shape: BoxShape.circle,
              ),
              child: Icon(
                widget.buttonObject.icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              widget.buttonObject.text ?? "",
              style: TextStyle(
                color: (hoverValue) ? Colors.grey : Colors.black87,
              ),
            ),
          ],
        ),
      ),
      onHover: (hover) {
        setState(() {
          hoverValue = hover;
        });
      },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return widget.buttonObject.destination;
          }),
        );
      },
    );
  }
}
