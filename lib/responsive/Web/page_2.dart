import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Web/components/customContainer.dart';
import 'package:portfolio/responsive/components/skills.dart';
import 'package:portfolio/utils/my_bax.dart';

import '../../utils/labels.dart';

class page_2 extends StatefulWidget {
  bool hoberSchool = false;
  bool hoberCollege = false;
  bool hoberAboutMe = false;
  page_2({super.key});

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      color: defaultBackgroundColor,
      child: Row(
        children: [
          // ==================== Avatar ==========================
          Container(
            width: w / 2.1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: w / 4,
                child: Image.asset(
                  "assets/images/about-image.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          //======================== About me ========================
          SizedBox(
            width: w / 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: label(
                    text: "About Me",
                    size: w / 25,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (Hober) {
                    setState(() {
                      widget.hoberAboutMe = Hober;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: !widget.hoberAboutMe
                              ? Colors.purple.withOpacity(0.5)
                              : Colors.pink.withOpacity(0.5),
                          spreadRadius: 10,
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
                          fontSize: w / 70,
                          color: !widget.hoberAboutMe
                              ? Colors.purple
                              : Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ),
                //==================== Skills ===========================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: w / 4,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: label(
                              text: "Skills",
                              size: w / 30,
                              color: Colors.purple,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          skills(count: 4, labelSize: w / 70)
                        ],
                      ),
                    ),
                    //=================== Education =========================
                    SizedBox(
                      width: w / 4.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: label(
                              text: "Education",
                              size: w / 30,
                              color: Colors.purple,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: label(
                                text: "✦ College",
                                size: w / 70,
                                color: Colors.white,
                              )),
                          InkWell(
                            onTap: () {},
                            onHover: (Hober) {
                              setState(() {
                                widget.hoberCollege = Hober;
                              });
                            },
                            child: customeContainer(
                                hober: widget.hoberCollege,
                                fontSize: w / 80,
                                text:
                                    "Indian Institute of Information Technology, Kalyani\n2022 - 2026"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, top: 10),
                            child: label(
                              text: "✦ School",
                              size: w / 70,
                              color: Colors.white,
                            ),
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
                                fontSize: w / 80,
                                text:
                                    "Kendriya Vidyalaya Sangathan, Kishanganj\n2010 - 2021"),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
