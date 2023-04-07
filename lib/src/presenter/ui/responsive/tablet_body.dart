import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/about_project.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/download_app.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/introduce_tablet.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/social_media.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const IntroduceTablet(),
                    DownloadApp(
                      alignment: Alignment.topRight,
                      crossAlign: CrossAxisAlignment.end,
                      textAlign: TextAlign.right,
                      padding: const EdgeInsets.only(
                          right: 30, top: 70, bottom: 140),
                      width: sizeWidth * 0.6,
                    ),
                    AboutProject(
                      padding: const EdgeInsets.only(
                          left: 30, top: 140, bottom: 100),
                      width: sizeWidth * 0.5,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 650,
                child: Image.network(
                  'https://media.discordapp.net/attachments/1071892919633576117/1089615453946658916/image.png?width=583&height=650',
                  height: 500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 1100,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.network(
                    'https://media.discordapp.net/attachments/1071892919633576117/1092987662366941315/fotinha_cropped.png?width=504&height=650',
                    height: 400,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: const [
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
            ],
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
