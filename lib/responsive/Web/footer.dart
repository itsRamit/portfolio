import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Like_button.dart';
import 'package:portfolio/utils/my_tile.dart';

class footer extends StatefulWidget {
  const footer({super.key});

  @override
  State<footer> createState() => _footerState();
}

class _footerState extends State<footer> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: h / 3,
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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: w / 2 - 15,
              // height: h / 3,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              color: Colors.purple, // Set the color of the divider
              thickness: 1, // Set the thickness of the divider line
            ),
            SizedBox(
              width: w / 2 - 31,
              child: Column(children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: contactsButtonIcons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                  ),
                  itemBuilder: (context, index) {
                    return IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        icon: contactsButtonIcons[index]);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.blue,
                        ]),
                      ),
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
                              onPressed: () {},
                              child: Text("Download Resume"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            "Drop a Heart",
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
                        SizedBox(width: w / 15, child: like_button()),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "If you liked",
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
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
