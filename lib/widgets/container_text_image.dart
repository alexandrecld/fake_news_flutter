import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';

class ContainerTextImage extends StatelessWidget {
  const ContainerTextImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: size.height / 2,
        width: size.width,
        decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(
                color: Colors.grey, width: 1.0, style: BorderStyle.solid),
            bottom: BorderSide(
                color: Colors.grey, width: 1.0, style: BorderStyle.solid),
          ),
          image: DecorationImage(
              image: AssetImage(bannerImage), fit: BoxFit.cover),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  letterSpacing: 5,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '"ON PEUT TROMPER UNE FOIS MILLES PERSONNES, \n MAIS ON NE PEUT PAS TROMPER MILLE FOIS UNE \n PERSONNE." - ',
                  ),
                  TextSpan(
                    text: 'ÉMILE',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
