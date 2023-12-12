import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Tablet/components/customContainer.dart';
import 'package:portfolio/responsive/components/skills.dart';
import 'package:portfolio/utils/labels.dart';
import 'package:portfolio/utils/my_bax.dart';

class Page2 extends StatefulWidget {
  bool hoberSchool = false;
  bool hoberCollege = false;
  bool hoberAboutMe = false;
  Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        //=================== About Me ======================
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: label(
              text: "About Me",
              size: w / 20,
              color: Colors.purple,
              fontWeight: FontWeight.w500),
        ),
        InkWell(
          onTap: () {},
          onHover: (Hober) {
            setState(() {
              widget.hoberAboutMe = Hober;
            });
          },
          child: customeContainer(
            hober: widget.hoberAboutMe,
            text: info,
            fontSize: w / 35,
          ),
        ),
        SizedBox(
          height: h / 60,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ================== SKILLS ============================
            SizedBox(
              width: w / 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: label(
                        text: "Skills",
                        size: w / 25,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500),
                  ),
                  skills(count: 4, labelSize: w / 50)
                ],
              ),
            ),
            //=================== Education =========================
            SizedBox(
              width: w / 2.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: label(
                        text: "Education",
                        size: w / 25,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: label(
                          text: "✦ College",
                          size: w / 50,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (Hober) {
                          setState(() {
                            widget.hoberCollege = Hober;
                          });
                        },
                        child: customeContainer(
                          hober: widget.hoberCollege,
                          text:
                              "Indian Institute of Information Technology, Kalyani\n2022 - 2026",
                          fontSize: w / 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: label(
                          text: "✦ School",
                          size: w / 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (Hober) {
                      setState(() {
                        widget.hoberSchool = Hober;
                      });
                    },
                    child: customeContainer(
                      hober: widget.hoberSchool,
                      text:
                          "Kendriya Vidyalaya Sangathan, Kishanganj\n2010 - 2021",
                      fontSize: w / 45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
