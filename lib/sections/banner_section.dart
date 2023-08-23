import 'package:flutter/material.dart';
import '../widgets/container_text_image.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ContainerTextImage(),
      ],
    );
  }
}
