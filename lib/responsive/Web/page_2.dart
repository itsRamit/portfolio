import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/my_bax.dart';

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
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(
            width: w / 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "About Me",
                    style: TextStyle(
                        fontSize: w / 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500),
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
                            child: Text(
                              "Skills",
                              style: TextStyle(
                                  fontSize: w / 25,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "✦ Programming Languages",
                                // textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: w / 70,
                                  color: Colors.white,
                                ),
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return MySkillBox(
                                    imgPath: ProgrammingLanguage[index],
                                    bgColor: ProgrammingLanguageColor[index],
                                    name: ProgrammingLanguageName[index],
                                  );
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "✦ Framework",
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: w / 70,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return MySkillBox(
                                    imgPath: Frameworks[index],
                                    bgColor: FrameworksColor[index],
                                    name: FrameworksName[index],
                                  );
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "✦ Other",
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: w / 70,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 2,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return MySkillBox(
                                    imgPath: others[index],
                                    bgColor: othersColor[index],
                                    name: othersName[index],
                                  );
                                },
                              ),
                            ],
                          )
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
                            child: Text(
                              "Education",
                              style: TextStyle(
                                  fontSize: w / 25,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "✦ College",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: w / 70,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (Hober) {
                              setState(() {
                                widget.hoberCollege = Hober;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: !widget.hoberCollege
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
                                  "Indian Institute of Information Technology, Kalyani\n2022 - 2026",
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: w / 80,
                                    color: !widget.hoberCollege
                                        ? Colors.purple
                                        : Colors.pink,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, top: 10),
                            child: Text(
                              "✦ School",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: w / 70,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (Hober) {
                              setState(() {
                                widget.hoberSchool = Hober;
                              });
                            },
                            child: Container(
                              width: w / 4.4,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: !widget.hoberSchool
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
                                  "Kendriya Vidyalaya Sangathan, Kishanganj\n2010 - 2021",
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: w / 80,
                                    color: !widget.hoberSchool
                                        ? Colors.purple
                                        : Colors.pink,
                                  ),
                                ),
                              ),
                            ),
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
