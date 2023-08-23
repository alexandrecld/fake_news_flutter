import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';

class ContainerTextImage extends StatelessWidget {
  const ContainerTextImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(bannerImage).image, fit: BoxFit.cover)),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Text(
            '"ON PEUT TROMPER UNE FOIS MILLES PERSONNES, \n MAIS ON NE PEUT PAS TROMPER MILLE FOIS UNE PERSONNE. ÉMILE"',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
