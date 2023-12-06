import 'package:flutter/material.dart';

class MySkillBox extends StatefulWidget {
  late String imgPath;
  late String name;
  late Color bgColor;

  MySkillBox(
      {required this.bgColor, required this.name, required this.imgPath});

  @override
  State<MySkillBox> createState() => _MySkillBoxState();
}

class _MySkillBoxState extends State<MySkillBox> {
  bool hober = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: InkWell(
        onTap: () {},
        onHover: (Hober) {
          setState(() {
            hober = Hober;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: !hober?widget.bgColor.withOpacity(0.5):Colors.pink.withOpacity(0.5),
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
                        widget.imgPath,
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.01),
                  Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.13,
                        color: !hober?Colors.white:Colors.pink,),
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

class MyProjectBox extends StatefulWidget {
  late String imgPath;
  late String name;
  late Color bgColor;
  late Color onChangeColor;
  bool hober = false;
  MyProjectBox(
      {required this.bgColor,
      required this.name,
      required this.imgPath,
      this.onChangeColor = Colors.pink});

  @override
  State<MyProjectBox> createState() => _MyProjectBoxState();
}

class _MyProjectBoxState extends State<MyProjectBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (hober) {
        setState(() {
          widget.hober = hober;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: !widget.hober
                    ? widget.bgColor.withOpacity(0.5)
                    : widget.onChangeColor.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SizedBox(
                height: constraints.maxHeight * 0.7,
                child: Card(
                  color: Colors.black,
                  child: Image.asset(
                    widget.imgPath,
                    fit: BoxFit.fitHeight,
                  ),
                ),
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
