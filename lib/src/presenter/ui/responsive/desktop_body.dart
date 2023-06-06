// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/core/image_link_enum.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/about_project.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/download_app.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/introduce_desktop.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/social_media.dart';

class DesktopBody extends StatelessWidget {
  final LandingController ct;
  const DesktopBody({
    Key? key,
    required this.ct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const IntroduceDesktop(),
                DownloadApp(
                  ct: ct,
                  alignment: Alignment.topRight,
                  crossAlign: CrossAxisAlignment.end,
                  textAlign: TextAlign.right,
                  padding: const EdgeInsets.only(
                    right: 60,
                    top: 80,
                    bottom: 40,
                  ),
                ),
                const AboutProject(
                  padding:
                      EdgeInsets.only(left: 60, top: 40, bottom: 80, right: 60),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: SocialMedia(
                    color: Color.fromARGB(149, 0, 0, 0),
                    text: 'Visite a comunidade\ndo aplicativo',
                    textButton: 'Visitar Comunidade',
                    imageLink: ImageLink.github,
                  ),
                ),
                Expanded(
                  child: SocialMedia(
                    color: Color.fromARGB(148, 52, 82, 255),
                    text: 'Visite a comunidade\ndo aplicativo',
                    textButton: 'Visitar Comunidade',
                    imageLink: ImageLink.discord,
                  ),
                ),
                Expanded(
                  child: SocialMedia(
                    color: Color.fromARGB(147, 250, 57, 36),
                    text: 'Visite a comunidade\ndo aplicativo',
                    textButton: 'Visitar Comunidade',
                    imageLink: ImageLink.instagram,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
