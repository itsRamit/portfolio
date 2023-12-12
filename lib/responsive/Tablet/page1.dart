import 'package:flutter/material.dart';
import 'package:portfolio/responsive/components/Animated.dart';

import '../../utils/labels.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width < 600
        ? MediaQuery.of(context).size.width
        : 600.00;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //========== Avatar ============
          AnimatedImageContainer(
            height: h / 3,
            width: h / 3,
          ),
          SizedBox(
            height: h / 2,
            child: Column(
              children: [
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
                  height: h / 80,
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
          ),
        ],
      ),
    );
  }
}
