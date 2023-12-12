import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/Web/components/createdUsingFlutter.dart';
import 'package:portfolio/responsive/components/scroll_model.dart';
import 'package:portfolio/responsive/web/footer.dart';
import 'package:portfolio/responsive/Web/page1.dart';
import 'package:portfolio/responsive/Web/page_2.dart';
import 'package:portfolio/responsive/Web/page_3.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        backgroundColor: defaultBackgroundColor,
        title: createdUsingFlutter(),
        actions: [
          TextButton.icon(
              onPressed: () {
                Scroll(0.0, _scrollController);
              },
              icon: const Icon(Icons.home),
              label: const Text("Home", style: TextStyle(color: Colors.white))),
          TextButton.icon(
              onPressed: () {
                Scroll(h, _scrollController);
              },
              icon: const Icon(Icons.person_2_outlined),
              label:
                  const Text("About", style: TextStyle(color: Colors.white))),
          TextButton.icon(
              onPressed: () {
                Scroll(1.5 * h, _scrollController);
              },
              icon: const Icon(Icons.lightbulb_circle),
              label:
                  const Text("Skills", style: TextStyle(color: Colors.white))),
          TextButton.icon(
              onPressed: () {
                Scroll(2.15 * h, _scrollController);
              },
              icon: const Icon(Icons.code),
              label: const Text("Projects",
                  style: TextStyle(color: Colors.white))),
          TextButton.icon(
              onPressed: () {
                Scroll(2.3 * h, _scrollController);
                ;
              },
              icon: const Icon(Icons.phone_android_rounded),
              label: const Text("Contacts",
                  style: TextStyle(color: Colors.white))),
        ],
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              page_1(),
              Divider(
                color: Colors.purple,
              ),
              page_2(),
              page_3(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
