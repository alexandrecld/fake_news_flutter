import 'package:fake_news/sections/contact_section.dart';
import 'package:fake_news/widgets/url_button.dart';
import 'package:flutter/material.dart';
import 'package:fake_news/pages/main_page.dart';
import 'package:fake_news/widgets/hover_button.dart';
import 'models/button_object.dart';
import 'models/last_news.dart';
import 'models/url_class.dart';

String bannerImage = "images/banner.jpg";
String booksImage = "images/pic01.jpg";
String nutellaToastImage = "images/pic02.jpg";
String cherryTreeImage = "images/pic03.jpg";
String agendaImage = "images/pic04.jpg";
String vinylImage = "images/pic05.jpg";
String globeImage = "images/pic06.jpg";
String redLeafImage = "images/pic07.jpg";

Color whiteColor = const Color.fromRGBO(255, 255, 255, 1);
Color fondGris = const Color.fromRGBO(240, 240, 240, 1);
Color fondSombre = const Color.fromRGBO(68, 68, 68, 1);
Color orange = const Color.fromRGBO(237, 120, 106, 1);
Color orangeHover = const Color.fromRGBO(253, 136, 122, 1);
Color rouge = const Color.fromRGBO(204, 0, 0, 1);
Color grisLeger = const Color.fromRGBO(229, 229, 229, 1);
Color grisMoyen = const Color.fromRGBO(119, 119, 119, 1);
Color gris = const Color.fromRGBO(102, 102, 102, 1);
Color grisSombre = const Color.fromRGBO(60, 60, 60, 1);

List<ButtonObject> menuButton = [
  ButtonObject(text: "Rembobiner", icon: Icons.home, destination: const MainPage()),
  ButtonObject(text: "Truc en toc", icon: Icons.bar_chart, destination: const MainPage()),
  ButtonObject(text: "Rouages", icon: Icons.settings, destination: const MainPage()),
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((button) => HoverButton(buttonObject: button)).toList();

List<LastNews> lastNews = [
  LastNews(date: "28/07/2020 08:57", name: "Comment ranger un livre ?", text: "On vous ment depuis le début, il faut ranger les livres sur la tranche, c'est meilleur pour la santé mentale. Le témoignage exlusif de Robert, dictionnaire de français", path: booksImage),
  LastNews(date: "26/07/2020 09:14", name: "Huile de palmipède", text: "Des chercheurs ont découvert qu'à cause de l'huile de palme quelle contient, une consommation excessive de pâte à tartiner provoquerait une mutation du pied en pâte de canard. Les photos exclusives ici !", path: nutellaToastImage),
  LastNews(date: "14/07/2020 12:18", name: "Cérisier alien", text: "EXCLUSIF ! Les aliens sont parmi nous ! Ils se cachent dans les cerisiers déguisés en fleurs. L'interview exclusive de Bob l'extraterrestre", path: cherryTreeImage),
];

List<UrlClass> networks = [
  UrlClass(name: "@Fakenews", url: "https://www.twitter.com/@Fakenews", iconAsset: "icons/twitter.png"),
  UrlClass(name: "instagram.com/fake-news", url: "https://www.instagram.com/fake-news", iconAsset: "icons/instagram.png"),
  UrlClass(name: "dribbble.com/fake-news", url: "https://www.dribbble.com/fake-news", iconAsset: "icons/dribbble.png"),
  UrlClass(name: "facebook.com/fake-news", url: "https://www.facebook.com/fake-news", iconAsset: "icons/facebook.png"),
];

List<UrlButton> getSocialButtons() =>
    networks.map((net) => UrlButton(urlClass: net)).toList();
