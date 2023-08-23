import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';
import '../widgets/title_text.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(
                    label: "DES QUESTIONS ? CONTACTEZ-NOUS", fSize: 30
                ),
              ],
            ),
            Row(
              children: [
                TitleText(
                    label:
                        "Nous vous répondrons exclusivement par pigeon voyageur.",
                    fSize: 20
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    TitleText(
                        label:
                            "1234 Ch. de la perdition \n 457R6 Quelque part \n Jupiter",
                        fSize: 15
                    ),
                    TitleText(
                        label: "(0_O) |0_|0'/_0/(T_T)", fSize: 15
                    ),
                    TitleText(
                        label: "ne-pas-repondre@fake-news.info", fSize: 15
                    ),
                  ],
                ),
                Column(
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
    List<Widget> items = [const Text("")];
    items.addAll(getSocialButtons());
    return items;
  }
}
