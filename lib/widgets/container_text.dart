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
              const Text(
                "F A K E  N E W S  I I",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 140),
              const Text(
                "IL REVIENT ET IL EST PAS CONTENT ! \n MYTHONÉ EN PHP ET MYSQL",
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
              // const SizedBox(height: 1),
            ],
          ),
        ),
      ),
    );
  }
}
