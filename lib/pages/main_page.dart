import 'package:fake_news/sections/banner_section.dart';
import 'package:fake_news/sections/contact_section.dart';
import 'package:fake_news/sections/last_news_section.dart';
import 'package:fake_news/sections/top_stack.dart';
import 'package:flutter/material.dart';
import '../models/responsive.dart';
import '../widgets/drawer_small.dart';
import '../widgets/mobile_bar.dart';
import '../widgets/web_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = Responsive().getScreenSize(context);

    return Scaffold(
      appBar:
          (screenSize == ScreenSize.small) ? MobileBar() : WebBar(size: size),
      drawer: const DrawerSmall(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TopStack(),
            LastNewsSection(),
            BannerSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
