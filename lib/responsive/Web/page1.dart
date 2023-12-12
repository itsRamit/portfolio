import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/components/Animated.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      height: h,
      color: defaultBackgroundColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Text(
                        "Hi, I'm ",
                        style: TextStyle(
                            fontSize: w / 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      // Text("RAMIT DAS",
                      //     style: TextStyle(
                      //         fontSize: 90,
                      //         color: Colors.purple,
                      //         fontWeight: FontWeight.bold)),
                      AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TyperAnimatedText("RAMIT DAS",
                              textStyle: TextStyle(
                                  fontSize: w / 18,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                              speed: Duration(milliseconds: 150)),
                        ],
                      ),
                    ],
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText('App Developer',
                          textStyle:
                              TextStyle(fontSize: 40, color: Colors.purple),
                          duration: Duration(milliseconds: 1500)),
                      FadeAnimatedText('Web Developer',
                          textStyle:
                              TextStyle(fontSize: 40, color: Colors.purple),
                          duration: Duration(milliseconds: 1500)),
                      FadeAnimatedText("Programmer",
                          textStyle:
                              TextStyle(fontSize: 40, color: Colors.purple),
                          duration: Duration(milliseconds: 1500)),
                    ],
                  ),
                  // Text("App and Web Developer",
                  //     style: TextStyle(fontSize: 40, color: Colors.white)),
                ],
              ),
            ),
            SizedBox(
              child: AnimatedImageContainer(),
            )
          ],
        ),
      ),
    );
  }
}
