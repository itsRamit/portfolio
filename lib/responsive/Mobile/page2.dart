import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Mobile/mobile_layout.dart';
import 'package:portfolio/utils/my_bax.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      // height: 1.1 * h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "About Me",
              style: TextStyle(
                  fontSize: w / 9,
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
                  fontSize: w / 25,
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
                  fontSize: w / 9,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "✦ Programming Languages",
            // textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: w / 25,
              color: Colors.white,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
          Text(
            "✦ Frameworks",
            // textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: w / 25,
              color: Colors.white,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
          Text(
            "✦ Other",
            // textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: w / 25,
              color: Colors.white,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      ),
    );
  }
}
