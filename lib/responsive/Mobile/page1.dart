import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
                width: w,
                height: h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: w / 4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hi There,",
                      style: TextStyle(
                          fontSize: w / 9,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "I'm Ramit Das",
                      style: TextStyle(
                          fontSize: w / 9,
                          color: Colors.purple,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: h / 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0, right: 48),
                      child: Column(
                        children: [
                          Text(
                            "I'm an App and Web",
                            style: TextStyle(
                              fontSize: w / 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Developer from India",
                            style: TextStyle(
                              fontSize: w / 20,
                              color: Colors.white,
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