import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/desktop_body.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/mobile_body.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/responsive_layout.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/tablet_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileBody(),
      tabletBody: TabletBody(),
      desktopBody: DesktopBody(),
    );
  }
}
