import 'package:fake_news/widgets/container_text.dart';
import 'package:flutter/material.dart';

class TopStack extends StatelessWidget {
  const TopStack({super.key});

  @override
  Widget build(BuildContext context) {

    return const Stack(
      children: [
        ContainerText(),
      ],
    );
  }
}
