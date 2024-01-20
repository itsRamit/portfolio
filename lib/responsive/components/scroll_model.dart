import 'package:flutter/material.dart';

void Scroll(double position, ScrollController _scrollController) {
  _scrollController.animateTo(
    position,
    duration: Duration(milliseconds: 500),
    curve: Curves.ease,
  );
}
