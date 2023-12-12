import 'package:flutter/material.dart';

class customeContainer extends StatefulWidget {
  late bool hober;
  late String text;
  late double fontSize;
  customeContainer(
      {super.key,
      required this.hober,
      required this.fontSize,
      required this.text});

  @override
  State<customeContainer> createState() => _customeContainerState();
}

class _customeContainerState extends State<customeContainer> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: !widget.hober
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
          widget.text,
          // textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: widget.fontSize,
            color: !widget.hober ? Colors.purple : Colors.pink,
          ),
        ),
      ),
    );
  }
}
