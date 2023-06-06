import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/core/image_link_enum.dart';
import 'package:manga_easy_landing_page/src/presenter/controller/landing_controller.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/about_project.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/download_app.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/introduce_mobile.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/social_media.dart';

class LargeMobileBody extends StatelessWidget {
  final LandingController ct;
  const LargeMobileBody({super.key, required this.ct});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IntroduceMobile(
                    padding: EdgeInsets.fromLTRB(30, 70, 220, 70),
                  ),
                  DownloadApp(
                    ct: ct,
                    padding:
                        const EdgeInsets.only(top: 70, bottom: 20, right: 20),
                    imageHeight: 350,
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                  const AboutProject(
                    padding: EdgeInsets.only(
                        left: 30, top: 50, bottom: 70, right: 30),
                    isMobile: true,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.network(
                    'https://media.discordapp.net/attachments/1071892919633576117/1092970375589154837/image_cropped.png?width=304&height=650',
                    height: sizeHeight * 0.55,
                  ),
                ),
              ),
            ],
          ),
          const SocialMedia(
            color: Color.fromARGB(149, 0, 0, 0),
            imageLink: ImageLink.github,
            text: 'Visite a comunidade\ndo aplicativo',
            textButton: 'Visitar Comunidade',
          ),
          const SocialMedia(
            color: Color.fromARGB(148, 52, 82, 255),
            text: 'Visite a comunidade\ndo aplicativo',
            textButton: 'Visitar Comunidade',
            imageLink: ImageLink.discord,
          ),
          const SocialMedia(
            color: Color.fromARGB(147, 250, 57, 36),
            text: 'Visite a comunidade\ndo aplicativo',
            textButton: 'Visitar Comunidade',
            imageLink: ImageLink.instagram,
          ),
        ],
      ),
    );
  }
}
