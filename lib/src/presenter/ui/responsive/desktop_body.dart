// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
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
                    imageBackgroound:
                        'https://media.discordapp.net/attachments/1071892919633576117/1089658638060224653/image.png?width=1259&height=413',
                    logoSocialMedia:
                        'https://logos-download.com/wp-content/uploads/2016/09/GitHub_logo.png',
                    text: 'Visite a comunidade\ndo aplicativo',
                    textButton: 'Visitar Comunidade',
                    link: 'https://github.com/manga-easy',
                  ),
                ),
                Expanded(
                  child: SocialMedia(
                    color: Color.fromARGB(148, 52, 82, 255),
                    imageBackgroound:
                        'https://media.discordapp.net/attachments/1071892919633576117/1089659384063344680/image.png?width=1259&height=426',
                    logoSocialMedia:
                        'https://logodownload.org/wp-content/uploads/2017/11/discord-logo-2-1.png',
                    text: 'Visite a comunidade\ndo aplicativo',
                    textButton: 'Visitar Comunidade',
                    link: 'https://discord.gg/ssp8Cr4a7u',
                  ),
                ),
                Expanded(
                  child: SocialMedia(
                    color: Color.fromARGB(147, 250, 57, 36),
                    imageBackgroound:
                        'https://media.discordapp.net/attachments/1071892919633576117/1089611345026101279/image.png?width=1178&height=522',
                    logoSocialMedia:
                        'https://th.bing.com/th/id/R.d880faebb3dfcb0da6b568aacf561c2a?rik=bqxPrvnatG6JIA&riu=http%3a%2f%2fgetdrawings.com%2fvectors%2fwhite-instagram-logo-vector-11.png&ehk=isFxUg5rwr7XhEmf8OtI5ao5tlhI%2f1fJnM0htGnZ3qQ%3d&risl=&pid=ImgRaw&r=0',
                    text: 'Visite a comunidade\ndo aplicativo',
                    textButton: 'Visitar Comunidade',
                    link: 'https://www.instagram.com/mangaeasyoficial_/',
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
