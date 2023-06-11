import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/core/image_link_enum.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/about_project.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/download_app.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/introduce_tablet.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/social_media.dart';

class TabletBody extends StatelessWidget {
  final LandingController ct;
  const TabletBody({super.key, required this.ct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const IntroduceTablet(),
              DownloadApp(
                ct: ct,
                alignment: Alignment.topRight,
                crossAlign: CrossAxisAlignment.end,
                textAlign: TextAlign.right,
                padding: const EdgeInsets.only(right: 30, top: 60, bottom: 0),
              ),
              const AboutProject(
                padding:
                    EdgeInsets.only(left: 30, top: 50, bottom: 60, right: 30),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: SocialMedia(
                  color: Color.fromARGB(149, 0, 0, 0),
                  imageLink: ImageLink.github,
                  text: 'Visite a comunidade\ndo aplicativo',
                  textButton: 'Visitar Comunidade',
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
            ],
          ),
          const Expanded(
            child: SocialMedia(
              color: Color.fromARGB(147, 250, 57, 36),
              text: 'Visite a comunidade\ndo aplicativo',
              textButton: 'Visitar Comunidade',
              imageLink: ImageLink.instagram,
            ),
          ),
        ],
      ),
    );
  }
}
