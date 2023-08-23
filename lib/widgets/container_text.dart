import 'package:fake_news/widgets/uppercase_text.dart';
import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 140),
              const UppercaseText(
                "Fake news ii",
                style: TextStyle(
                  color: Colors.deepOrange,
                  letterSpacing: 15,
                  shadows: [
                    Shadow(
                      blurRadius: 0.1,
                      color: Colors.grey,
                      offset: Offset(3.0, 3.0),
                    ),
                  ],
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 140),
              const UppercaseText(
                "Il revient et il est pas content ! \n mythoné en php et mysql",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 140),
              Container(
                height: 20,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.grey),
                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
