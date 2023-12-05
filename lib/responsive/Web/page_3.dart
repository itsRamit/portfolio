import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/my_bax.dart';

class page_3 extends StatefulWidget {
  const page_3({super.key});

  @override
  State<page_3> createState() => _page_3State();
}

class _page_3State extends State<page_3> {
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
              "Projects",
              style: TextStyle(
                  fontSize: w / 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500),
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
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: MyProjectBox(
                  bgColor: Colors.purple,
                  imgPath: projects[index],
                  name: "Test",
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contact Me",
              style: TextStyle(
                  fontSize: w / 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
