import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

var defaultBackgroundColor = Colors.black;
var appBarColor = Colors.black;
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Text(' '),
  centerTitle: false,
);

var myWebAppBar = AppBar(
  backgroundColor: defaultBackgroundColor,
  title: const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'R A M I T  D A S',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    ],
  ),
  actions: [],
  centerTitle: false,
);

var drawerTextColor = TextStyle(
  color: Colors.white,
);

var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

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

List<String> projects = [
  "assets/images/project_1.png",
  "assets/images/project_2.png",
  "assets/images/project_3.png",
  "assets/images/project_4.png"
];
List<String> projectUrl = [
  "https://github.com/itsRamit/Todo_App",
  "https://github.com/itsRamit/Food_Recipe_App",
  "https://github.com/itsRamit/portfolio",
  "https://github.com/itsRamit/Chating_App_UI"
];
List<String> contacts = [
  " ramitd677@gmail.com",
  " +91 6295261395",
];

const List contactsIcon = [
  Icons.email,
  Icons.phone,
];

const List<FaIcon> contactsButtonIcons = [
  FaIcon(
    FontAwesomeIcons.linkedin,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.twitter,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.instagram,
    color: Colors.purple,
  ),
  FaIcon(
    FontAwesomeIcons.facebook,
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
const List<IconData> contactsWebButtonIcons = [
  FontAwesomeIcons.linkedin,
  FontAwesomeIcons.twitter,
  FontAwesomeIcons.instagram,
  FontAwesomeIcons.facebook,
  FontAwesomeIcons.github,
  FontAwesomeIcons.medium,
];

List<String> url = [
  "https://drive.google.com/file/d/10EhhcY1lSCQ-1hWlFzc8m6zmhLubXKWL/view?usp=sharing",
  "www.linkedin.com/in/ramitd6",
  "https://twitter.com/Ramit_d6",
  "https://www.instagram.com/d_ramit/",
  "https://www.facebook.com/profile.php?id=100089813780675&mibextid=ZbWKwL",
  "https://github.com/itsRamit",
  "https://medium.com/@ramitd677"
];


var info =
    "Hi, I'm Ramit Das, a sophomore pursuing degree in Electronics and Communication Engineering at Indian Institute of Information Technology , Kalyani. Proficient in C, C++, and Flutter, I'm passionate about building cross-platform applications. Additionally, I have a knack for front-end web development, creating intuitive and responsive interfaces using HTML, CSS, and JavaScript.\nEager to solve real-world problems through technology, I actively work on projects and seek new opportunities to innovate. Let's connect and explore the possibilities!";
