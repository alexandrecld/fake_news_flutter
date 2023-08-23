import 'package:fake_news/constantes.dart';
import 'package:fake_news/widgets/uppercase_text.dart';
import 'package:flutter/material.dart';
import '../widgets/info_icon.dart';
import '../widgets/url_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: whiteColor,
      width: size.width,
      height: size.height / 2,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UppercaseText("Des questions ?",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        letterSpacing: 10,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                UppercaseText(" contactez-nous !",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        letterSpacing: 10,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ],
            ),
            const Row(
              children: [
                Text(
                  "Nous vous répondrons exclusivement par pigeon voyageur.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoIcon(icon: Icons.home, info: "1234 Ch. de la perdition \n 457R6 Quelque part \n Jupiter"),
                    SizedBox(height: 30),
                    InfoIcon(icon: Icons.phone, info: "(0_O) |0_|0'/_0/(T_T)"),
                    SizedBox(height: 30),
                    InfoIcon(icon: Icons.email, info: "ne-pas-repondre@fake-news.info"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: social(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> social() {
    return networks.map((net) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: UrlButton(urlClass: net),
      );
    }).toList();
  }
}
