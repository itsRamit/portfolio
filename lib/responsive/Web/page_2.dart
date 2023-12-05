import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/my_bax.dart';

class page_2 extends StatefulWidget {
  const page_2({super.key});

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
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(
            width: w / 2.1,
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
                Card(
                  elevation: 8,
                  shadowColor: Colors.purple,
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      info,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: w / 70,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Skills",
                    style: TextStyle(
                        fontSize: w / 20,
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
                        fontSize: w / 55,
                        color: Colors.white,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                      ),
                      itemBuilder: (context, index) {
                        return MySkillBox(
                          imgPath: ProgrammingLanguage[index],
                          bgColor: ProgrammingLanguageColor[index],
                          name: ProgrammingLanguageName[index],
                        );
                      },
                    ),
                    Text(
                      "✦ Frameworks",
                      // textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: w / 55,
                        color: Colors.white,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                      ),
                      itemBuilder: (context, index) {
                        return MySkillBox(
                          imgPath: Frameworks[index],
                          bgColor: FrameworksColor[index],
                          name: FrameworksName[index],
                        );
                      },
                    ),
                    Text(
                      "✦ Other",
                      // textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: w / 55,
                        color: Colors.white,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
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
          )
        ],
      ),
    );
  }
}
