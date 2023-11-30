import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Mobile/footer.dart';
import 'package:portfolio/responsive/Mobile/page1.dart';
import 'package:portfolio/responsive/Mobile/page2.dart';
import 'package:portfolio/responsive/Mobile/page3.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //============= Page 1 ===========================
              Page1(),
              //================ Page 2 ========================
              Page2(),
              //============== Page 3 ==========================
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Page3(),
              ),
              //================= Page 4(Footer) ===================
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: footer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
