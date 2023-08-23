import 'package:flutter/material.dart';
import 'package:fake_news/pages/main_page.dart';

void main() {
  runApp(const FakeNews());
}

class FakeNews extends StatelessWidget {
  const FakeNews({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Fake News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MainPage(),
    );
  }
}