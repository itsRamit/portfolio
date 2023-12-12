import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Mobile/components/educationBox.dart';
import 'package:portfolio/responsive/Mobile/mobile_layout.dart';
import 'package:portfolio/responsive/components/skills.dart';
import 'package:portfolio/utils/labels.dart';
import 'package:portfolio/utils/my_bax.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
        width: w,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: label(
                  text: "About Me",
                  size: w / 15,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500)),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                info,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: w / 30,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: label(
                  text: "Skills",
                  size: w / 15,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500)),
          skills(count: 4,labelSize:w/25,),
          Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, left: 8, right: 8, bottom: 8),
              child: label(
                  text: "Education",
                  size: w / 15,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: label(
                    text: "✦ College",
                    size: w / 25,
                  )),
              educationBox(
                  text:
                      "Indian Institute of Information Technology, Kalyani\n2022 - 2026"),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: label(
                    text: "✦ School",
                    size: w / 25,
                  )),
              educationBox(
                  text:
                      "Kendriya Vidyalaya Sangathan, Kishanganj\n2010 - 2021"),
            ],
          ),
        ]));
  }
}
