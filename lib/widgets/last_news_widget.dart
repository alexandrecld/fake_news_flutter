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

// class _EventWidgetState extends State<LastNewsWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         children: [
//           SizedBox(
//             height: widget.size.height,
//             width: widget.size.width,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(25),
//               child: Image.asset(
//                 widget.lastNews.path,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const Padding(padding: EdgeInsets.only(bottom: 10)),
//           Text(
//             widget.lastNews.name,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
//           ),
//           const Padding(padding: EdgeInsets.only(bottom: 20)),
//           Text(widget.lastNews.text,
//               style:
//                   const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
//         ],
//       ),
//     );
//   }
// }

class _EventWidgetState extends State<LastNewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: widget.size.height,
            width: widget.size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                widget.lastNews.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          Text(
            widget.lastNews.name,
            style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20)),
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
