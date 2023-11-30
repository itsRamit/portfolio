import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
      ),
    );
  }
}

class MyContactTile extends StatelessWidget {
  late String contact;
  late Icon contactIcon;
  MyContactTile({Key? key, required this.contact,required this.contactIcon}) : super(key: key);

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
              contactIcon,
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
