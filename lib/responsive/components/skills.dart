import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/my_bax.dart';

class skills extends StatelessWidget {
  late int count;
  late double labelSize;
  skills({super.key,required this.count,required this.labelSize});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "✦ Programming Languages",
          // textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: labelSize,
            color: Colors.white,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: ProgrammingLanguage.length,
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
          style: TextStyle(
            fontSize: labelSize,
            color: Colors.white,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: Frameworks.length,
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
            fontSize: labelSize,
            color: Colors.white,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: others.length,
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
    );
  }
}
