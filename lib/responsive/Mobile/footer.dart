import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/components/Like_button.dart';
import 'package:portfolio/utils/labels.dart';
import 'package:portfolio/utils/my_tile.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return Container(
        width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ================ Contacts ========================
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: label(
                    text: "Contact Me",
                    size: w / 15,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500)),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return MyContactTile(
                    contact: contacts[index], contactIcon: contactsIcon[index]);
              },
            ),
            // ================ Socials icons ======================
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: contactsButtonIcons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
              ),
              itemBuilder: (context, index) {
                return IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse(url[index+1]));
                    }, icon: contactsButtonIcons[index]);
              },
            ),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.purple,
            ),
            // =============== Like Button part ======================
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: label(
                      text: "✦ Drop A Heart",
                      size: w / 40,
                      color: Colors.purple,
                    )),
                like_button(),
                Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: label(
                      text: "If You Liked ✦",
                      size: w / 40,
                      color: Colors.purple,
                    )),
              ],
            )
          ],
        ));
  }
}
