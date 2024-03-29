import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Tablet/footer.dart';
import 'package:portfolio/responsive/Tablet/page1.dart';
import 'package:portfolio/responsive/Tablet/page2.dart';
import 'package:portfolio/responsive/Tablet/page3.dart';
import 'package:portfolio/responsive/components/createdUsingFlutter.dart';
import 'package:portfolio/responsive/components/scroll_model.dart';

class TabScaffold extends StatelessWidget {
  ScrollController _scrollController = ScrollController();
  TabScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: Drawer(
        backgroundColor: Colors.black87,
        shadowColor: Colors.grey,
        elevation: 2,
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 64,
                color: Colors.pink,
              ),
            ),
            Padding(
              padding: tilePadding,
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.download),
                  title: Text(
                    'Resume',
                    style: drawerTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: tilePadding,
              child: InkWell(
                onTap: () {
                  Scroll(0.0, _scrollController);
                },
                child: ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text(
                    'Home',
                    style: drawerTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: tilePadding,
              child: InkWell(
                onTap: () {
                  Scroll(h, _scrollController);
                },
                child: ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text(
                    'About',
                    style: drawerTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: tilePadding,
              child: InkWell(
                onTap: () {
                  Scroll(1.6 * h, _scrollController);
                },
                child: ListTile(
                  leading: Icon(Icons.lightbulb_circle),
                  title: Text(
                    'Skills',
                    style: drawerTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: tilePadding,
              child: InkWell(
                onTap: () {
                  Scroll(2.3 * h, _scrollController);
                },
                child: ListTile(
                  leading: Icon(Icons.code_outlined),
                  title: Text(
                    'Projects',
                    style: drawerTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: tilePadding,
              child: InkWell(
                onTap: () {
                  Scroll(3 * h, _scrollController);
                },
                child: ListTile(
                  leading: Icon(Icons.phone_android_rounded),
                  title: Text(
                    'Contacts',
                    style: drawerTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
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
                padding: EdgeInsets.only(top: w / 30),
                child: Page3(),
              ),
              //================= Page 4(Footer) ===================
              Padding(
                padding: EdgeInsets.only(top: w / 30),
                child: footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
