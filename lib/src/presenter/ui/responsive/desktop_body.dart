import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/presenter/widgets/social_media.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(
              children: [
                Image.network(
                  'https://media.discordapp.net/attachments/1071892919633576117/1089615453946658916/image.png?width=583&height=650',
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 28, top: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Aqui você pode baixar a versão\nmais recente do nosso\naplicativo.',
                          textAlign: TextAlign.right,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(254, 61, 0, 1),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Baixar agora',
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text('Versão 0.10.0')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
          Row(
            children: const [
              Expanded(
                child: SocialMedia(
                  imageBackgroound:
                      'https://th.bing.com/th/id/R.b784511ac1abf5c104c6a596de78a14e?rik=Vb3hZZIVSyuxrw&pid=ImgRaw&r=0',
                  logoSocialMedia:
                      'https://logos-download.com/wp-content/uploads/2016/09/GitHub_logo.png',
                  text: 'Visite a comunidade\ndo aplicativo',
                  textButton: 'Visitar Comunidade',
                  link: 'https://github.com/manga-easy',
                ),
              ),
              Expanded(
                child: SocialMedia(
                  imageBackgroound:
                      'https://th.bing.com/th/id/R.b784511ac1abf5c104c6a596de78a14e?rik=Vb3hZZIVSyuxrw&pid=ImgRaw&r=0',
                  logoSocialMedia:
                      'https://logodownload.org/wp-content/uploads/2017/11/discord-logo-2-1.png',
                  text: 'Visite a comunidade\ndo aplicativo',
                  textButton: 'Visitar Comunidade',
                  link: 'https://discord.gg/ssp8Cr4a7u',
                ),
              ),
              Expanded(
                child: SocialMedia(
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
    );
  }
}
