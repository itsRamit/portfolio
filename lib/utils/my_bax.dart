import 'package:flutter/material.dart';

class MySkillBox extends StatelessWidget {
  late String imgPath;
  late String name;
  late Color bgColor;
  MySkillBox(
      {required this.bgColor, required this.name, required this.imgPath});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: bgColor.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.7,
                  child: Card(
                    color: Colors.black,
                    child: Image.asset(
                      imgPath,
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.01),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: constraints.maxHeight * 0.13,
                      color: Colors.white),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MyProjectBox extends StatelessWidget {
  late String imgPath;
  late String name;
  late Color bgColor;
  MyProjectBox(
      {required this.bgColor, required this.name, required this.imgPath});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: bgColor.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.7,
                    child: Card(
                      color: Colors.black,
                      child: Image.asset(
                        imgPath,
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.01),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.13,
                        color: Colors.white),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
