import 'package:flutter/material.dart';

import '../models/responsive.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    ScreenSize screenSize = Responsive().getScreenSize(context);

    return const Scaffold(
      appBar: (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(
          size: size),
      drawer: const DrawerSmall(),
      body: const SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}