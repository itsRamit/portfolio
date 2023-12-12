import 'package:flutter/material.dart';
import 'package:portfolio/utils/labels.dart';

class educationBox extends StatelessWidget {
  late String text;
  educationBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: label(
            text: text,
            size: w / 30,
            color: Colors.purple,
          )),
    );
  }
}
