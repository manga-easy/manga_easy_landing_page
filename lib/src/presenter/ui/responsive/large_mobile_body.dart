import 'package:flutter/material.dart';
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
                    padding: EdgeInsets.only(left: 30, top: 50, bottom: 70, right: 30),
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
          const Expanded(
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
          const Expanded(
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
          const Expanded(
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
    );
  }
}
