import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/my_tile.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/Like_button.dart';

class footer extends StatefulWidget {
  bool hoberResume = false;
  footer({super.key});

  @override
  State<footer> createState() => _footerState();
}

class _footerState extends State<footer> {
  List<bool> isHovering =
      List.generate(contactsWebButtonIcons.length, (_) => false);
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: h / 4,
        width: w - 30,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: w / 2 - w / 20,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return MyWebContactTile(
                          contact: contacts[index],
                          contactIcon: contactsIcon[index]);
                    },
                  ),
                ],
              ),
            ),
            const VerticalDivider(
              endIndent: 20,
              indent: 20,
              color: Colors.purple,
              thickness: 1,
            ),
            SizedBox(
              width: w / 2 - w / 60,
              child: Column(children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: contactsWebButtonIcons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                  ),
                  itemBuilder: (context, index) {
                    return MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovering[index] = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovering[index] = false;
                        });
                      },
                      child: IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(url[index+1]));
                          },
                          iconSize: h / 25,
                          icon: FaIcon(
                            contactsWebButtonIcons[index],
                            color: !isHovering[index]
                                ? Colors.purple
                                : Colors.pink,
                          )),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Colors.pinkAccent,
                            Colors.blue,
                          ]),
                          boxShadow: [
                            widget.hoberResume
                                ? const BoxShadow(
                                    color: Colors.pink,
                                    offset: Offset(-2, 0),
                                    blurRadius: 20,
                                  )
                                : const BoxShadow(
                                    color: Colors.transparent,
                                    offset: Offset(0, 0),
                                    blurRadius: 0,
                                  ),
                            widget.hoberResume
                                ? const BoxShadow(
                                    color: Colors.blue,
                                    offset: Offset(2, 0),
                                    blurRadius: 20,
                                  )
                                : const BoxShadow(
                                    color: Colors.transparent,
                                    offset: Offset(0, 0),
                                    blurRadius: 0,
                                  )
                          ]),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: TextButton(
                              onHover: (hober) {
                                setState(() {
                                  widget.hoberResume = hober;
                                });
                              },
                              onPressed: () {},
                              child: Text("Download Resume"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: w / 15, child: like_button()),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
