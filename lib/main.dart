import 'package:flutter/material.dart';
import 'package:portfolio/responsive/desktop_layout.dart';
import 'package:portfolio/responsive/Mobile/mobile_layout.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/responsive/tab_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerTheme: DividerThemeData(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const responsiveLayout(
          desktopLayout: DesktopScaffold(),
          mobileLayout: MobileScaffold(),
          tabLayout: TabletScaffold()),
    );
  }
}
