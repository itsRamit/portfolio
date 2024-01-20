import 'package:flutter/material.dart';

class MyContactTile extends StatelessWidget {
  late String contact;
  late IconData contactIcon;
  late Color iconColor;
  MyContactTile(
      {Key? key,
      required this.contact,
      required this.contactIcon,
      this.iconColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.purple),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                contactIcon,
                color: iconColor,
              ),
              Text(
                contact,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyWebContactTile extends StatelessWidget {
  late String contact;
  late IconData contactIcon;
  MyWebContactTile({Key? key, required this.contact, required this.contactIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: h / 15,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple, // Set the color of the border
              width: 2, // Set the width of the border
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                contactIcon,
                color: Colors.purple,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  contact,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
