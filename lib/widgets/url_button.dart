import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/url_class.dart';

class UrlButton extends StatelessWidget {
  final UrlClass urlClass;

  const UrlButton({super.key, required this.urlClass});

  @override
  Widget build(BuildContext context) {
    Uri uri = Uri.parse(urlClass.url);

    return TextButton.icon(
      onPressed: () async {
        await canLaunchUrl(uri)
            ? launchUrl(uri, mode: LaunchMode.externalApplication)
            : throw "Impossible de lancer ${urlClass.name}";
      },
      icon: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.grey,
        child: Image.asset(
          urlClass.iconAsset,
          color: Colors.white,
          height: 16,
          width: 16,
        ),
      ),
      label: Text(urlClass.name),
    );
  }
}
