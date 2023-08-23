import 'package:fake_news/constantes.dart';
import 'package:fake_news/models/last_news.dart';
import 'package:flutter/material.dart';

class LastNewsWidget extends StatefulWidget {
  final Size size;
  final LastNews lastNews;

  const LastNewsWidget({required this.size, required this.lastNews, Key? key})
      : super(key: key);

  @override
  State<LastNewsWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<LastNewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: grisLeger, width: 5.0),
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: ClipRRect(
              child: Image.asset(
                widget.lastNews.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: grisMoyen,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1, 1),
                  blurRadius: 3.0,
                ),
              ],
            ),
            child: Text(
              widget.lastNews.date,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            widget.lastNews.name,
            style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const SizedBox(height: 60),
          SizedBox(
            width: widget.size.width * 0.8,
            child: Text(
              widget.lastNews.text,
              style: const TextStyle(color: Colors.black45, fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
