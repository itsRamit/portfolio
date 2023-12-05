import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var defaultBackgroundColor = Colors.black;
var appBarColor = Colors.black;
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Text(' '),
  centerTitle: false,
);

var myWebAppBar = AppBar(
  backgroundColor: defaultBackgroundColor,
  title: Row(
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
  actions: [
    TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.home),
        label: Text("Home", style: TextStyle(color: Colors.white))),
    TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.person_2_outlined),
        label: Text("About", style: TextStyle(color: Colors.white))),
    TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.lightbulb_circle),
        label: Text("Skills", style: TextStyle(color: Colors.white))),
    TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.code),
        label: Text("Projects", style: TextStyle(color: Colors.white))),
    TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.phone_android_rounded),
        label: Text("Contacts", style: TextStyle(color: Colors.white))),
  ],
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.white,
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.black87,
  shadowColor: Colors.grey,
  elevation: 2,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
          color: Colors.pink,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.download),
          title: Text(
            'Resume',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'About',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'Skills',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'Projects',
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

List<String> projects = [
  "assets/images/project_1.png",
  "assets/images/project_2.png",
  "assets/images/project_2.png",
  "assets/images/project_2.png"
];
List<String> contacts = [
  "ramitd677@gmail.com",
  "+91 6295261395",
];

const List contactsIcon = [
  Icon(
    Icons.email,
    color: Colors.purple,
  ),
  Icon(Icons.phone, color: Colors.purple),
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
    "Hi, I'm Ramit Das, a sophomore pursuing degree in Electronics and Communication Engineering at Indian Institute of Information Technology , Kalyani. Proficient in C, C++, and Flutter, I'm passionate about building cross-platform applications. Additionally, I have a knack for front-end web development, creating intuitive and responsive interfaces using HTML, CSS, and JavaScript.\nEager to solve real-world problems through technology, I actively work on projects and seek new opportunities to innovate. Let's connect and explore the possibilities!";
