import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget tabLayout;
  const responsiveLayout({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileLayout;
      } else if (constraints.maxWidth < 1100) {
        return tabLayout;
      } else {
        return desktopLayout;
      }
    });
  }
}
