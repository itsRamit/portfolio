import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive/Web/desktop_layout.dart';
import 'package:portfolio/responsive/components/Animated.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/responsive/splash/animatedLoadingText.dart';
import '../Mobile/mobile_layout.dart';
import '../Tablet/tab_layout.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => responsiveLayout(
                desktopLayout: DesktopScaffold(),
                mobileLayout: MobileScaffold(),
                tabLayout: TabScaffold()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 60,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
