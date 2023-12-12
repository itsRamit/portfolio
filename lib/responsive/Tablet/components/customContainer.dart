import 'package:flutter/material.dart';

class customeContainer extends StatelessWidget {
  late bool hober;
  late String text;
  late double fontSize;
  customeContainer({super.key, required this.hober, required this.text,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: !hober
                  ? Colors.purple.withOpacity(0.5)
                  : Colors.pink.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: !hober ? Colors.purple : Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
