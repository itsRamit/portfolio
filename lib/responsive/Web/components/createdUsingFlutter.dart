import 'dart:ui';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class createdUsingFlutter extends StatelessWidget {
  const createdUsingFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 40.0,
          sigmaY: 40.0,
        ),
        child: Container(
          height: h / 17,
          width: w / 11,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                width: 1.5,
                color: Colors.blue.withOpacity(0.1),
              )),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Created using   ",
                style: TextStyle(
                    fontSize: h / 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: h / 25,
                child: Image.asset(
                  Frameworks[0],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
