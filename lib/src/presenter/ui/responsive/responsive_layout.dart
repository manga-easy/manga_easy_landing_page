import 'dart:developer';

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget smallTablet;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
    required this.smallTablet,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) {
          log('mobileBody');
          return mobileBody;
        } else if (constraints.maxWidth < 850) {
          log('smallTablet');
          return smallTablet;
        } else if (constraints.maxWidth < 1100) {
          log('tabletBody');
          return tabletBody;
        } else {
          log('desktopBody');
          return desktopBody;
        }
      },
    );
  }
}
