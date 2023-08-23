import 'package:flutter/material.dart';
import 'package:fake_news/constantes.dart';
import '../models/responsive.dart';
import '../widgets/last_news_widget.dart';
import '../widgets/title_text.dart';

class LastNewsSection extends StatelessWidget {
  const LastNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = Responsive().getScreenSize(context);
    bool isSmall = (screenSize) == ScreenSize.small;
    Size cardSize = isSmall ? size / 2 : size / 4;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container()),
            ],
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(
                label: "LES DERNIÈRES FAKE NEWS !",
                fSize: 40,
              ),
            ],
          ),
          const SizedBox(height: 100),
          Row(
            children: [
              Expanded(child: Container()),
            ],
          ),
          adaptedToSize(isSmall, cardSize),
        ],
      ),
    );
  }

  Widget adaptedToSize(bool small, Size size) {
    List<Widget> widgets =
    lastNews.map((e) => LastNewsWidget(size: size, lastNews: e)).toList();
    return (small)
        ? Column(children: widgets)
        : Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: widgets,
    );
  }
}
