import 'package:flutter/material.dart';

class label extends StatelessWidget {
  late String text;
  late double size;
  late Color color;
  late FontWeight fontWeight;
  label(
      {super.key,
      required this.text,
      required this.size,
      this.color = Colors.white,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
    );
  }
}
