import 'package:flutter/material.dart';
import 'package:portfolio/responsive/Animated.dart';

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
      color: Colors.black,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h / 2,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Text(
                        "Hi, I'm ",
                        style: TextStyle(fontSize: 90, color: Colors.white),
                      ),
                      Text("RAMIT DAS",
                          style: TextStyle(fontSize: 90, color: Colors.purple)),
                    ],
                  ),
                  Text("App and Web Developer",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(
              child: AnimatedImageContainer(),
            )
          ],
        ),
      ),
    );
  }
}
