import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Like_button.dart';
import 'package:portfolio/utils/my_tile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Contact Me",
                style: TextStyle(
                    fontSize: w / 9,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return MyContactTile(
                    contact: contacts[index], contactIcon: contactsIcon[index]);
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: contactsButtonIcons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
              ),
              itemBuilder: (context, index) {
                return IconButton(
                    onPressed: () {}, icon: contactsButtonIcons[index]);
              },
            ),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Drop a Heart",
                    style: TextStyle(color: Colors.purple, fontSize: 10),
                  ),
                ),
                like_button(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "If you Liked",
                    style: TextStyle(color: Colors.purple, fontSize: 10),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
