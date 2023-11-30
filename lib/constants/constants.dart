import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var defaultBackgroundColor = Colors.black;
var appBarColor = Colors.black;
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Text(' '),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.black,
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 0,
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);

const List<String> ProgrammingLanguage = [
  "assets/images/c.png",
  "assets/images/cpp.png",
  "assets/images/js.png",
  "assets/images/dart.png",
];
const List<String> ProgrammingLanguageName = [
  "C",
  "C++",
  "Javascript",
  "Dart",
];
const List<Color> ProgrammingLanguageColor = [
  Color.fromARGB(255, 14, 77, 139),
  Colors.blue,
  Colors.yellow,
  Color(0xFF27c1a9),
];

List<String> Frameworks = [
  "assets/images/flutter.png",
  "assets/images/html.png",
  "assets/images/css.png",
];
const List<Color> FrameworksColor = [
  Color.fromARGB(255, 55, 143, 215),
  Colors.orange,
  Colors.blue
];
List<String> FrameworksName = [
  "Flutter",
  "HTML",
  "CSS",
];

List<String> others = [
  "assets/images/firebase.png",
  "assets/images/git.png",
];

List<Color> othersColor = [Colors.yellowAccent, Colors.redAccent];
List<String> othersName = [
  "Firebase",
  "Git",
];
List<String> contacts = [
  "ramitd677@gmail.com",
  "+91 6295261395",
];

const List contactsIcon = [
  Icon(Icons.email),
  Icon(Icons.phone),
];

const List<FaIcon> contactsButtonIcons = [
  FaIcon(
    FontAwesomeIcons.instagram,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.facebook,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.linkedin,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.twitter,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.github,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.medium,
    color: Colors.purple,
  )
];

var info =
    "I'm Ramit Das, a sophomore pursuing degree in Electronics and Communication Engineering at IIIT Kalyani. Proficient in C, C++, and Flutter, I'm passionate about building cross-platform applications. Additionally, I have a knack for front-end web development, creating intuitive and responsive interfaces using HTML, CSS, and JavaScript.\nEager to solve real-world problems through technology, I actively work on projects and seek new opportunities to innovate. Let's connect and explore the possibilities!";
