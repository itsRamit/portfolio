import 'package:flutter/material.dart';
import 'package:portfolio/responsive/components/Animated.dart';
import 'package:portfolio/utils/labels.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h - h / 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedImageContainer(
            height: w / 2,
            width: w / 2,
          ),
          SizedBox(
            height: h / 80,
          ),
          label(
            text: "Hi,",
            size: w / 9,
            fontWeight: FontWeight.w500,
          ),
          label(
            text: "I'm Ramit Das",
            size: w / 9,
            fontWeight: FontWeight.w500,
            color: Colors.purple,
          ),
          SizedBox(
            height: h / 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0, right: 48),
            child: Column(
              children: [
                label(text: "I'm a Developer and ", size: w / 20),
                label(text: "Programmer from India", size: w / 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
