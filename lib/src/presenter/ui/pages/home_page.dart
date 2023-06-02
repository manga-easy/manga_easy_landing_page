import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/desktop_body.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/mobile_body.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/responsive_layout.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/large_mobile_body.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/responsive/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LandingController ct = GetIt.I();

  @override
  void initState() {
    ct;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: MobileBody(ct: ct),
      smallTablet: LargeMobileBody(ct: ct),
      tabletBody: TabletBody(ct: ct),
      desktopBody: DesktopBody(ct: ct),
    );
  }
}
