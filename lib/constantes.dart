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

List<ButtonObject> menuButton = [
  ButtonObject(text: "Rembobiner", destination: const MainPage()),
  ButtonObject(text: "Truc en toc", destination: const MainPage()),
  ButtonObject(text: "Rouages", destination: const MainPage()),
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((button) => HoverButton(buttonObject: button)).toList();

List<LastNews> lastNews = [
  LastNews(name: "Comment ranger un livre ?", text: "On vous ment depuis le début, il faut ranger les livres sur la tranche, c'est meilleur pour la santé mentale. Le témoignage exlusif de Robert, dictionnaire de français", path: booksImage),
  LastNews(name: "Huile de palmipède", text: "Des chercheurs ont découvert qu'à cause de l'huile de palme quelle contient, une consommation excessive de pâte à tartiner provoquerait une mutation du pied en pâte de canard. Les photos exclusives ici !", path: nutellaToastImage),
  LastNews(name: "Cérisier alien", text: "EXCLUSIF ! Les aliens sont parmi nous ! Ils se cachent dans les cerisiers déguisés en fleurs. L'interview exclusive de Bob l'extraterrestre", path: cherryTreeImage),
];

List<ButtonObject> containerButton = [
  ButtonObject(
      text: "Téléphone",
      icon: const Icon(Icons.phone),
      destination: const ContactSection()),
  ButtonObject(
      text: "Mail",
      icon: const Icon(Icons.mail),
      destination: const ContactSection()),
  ButtonObject(
      text: "Visio",
      icon: const Icon(Icons.home),
      destination: const ContactSection()),
];

List<UrlClass> networks = [
  UrlClass(name: "Facebook", url: "https://www.facebook.com/"),
  UrlClass(name: "Instagram", url: "https://www.instagram.com/"),
  UrlClass(name: "Twitter", url: "https://www.twitter.com/"),
];

List<UrlButton> getSocialButtons() =>
    networks.map((net) => UrlButton(urlClass: net)).toList();
