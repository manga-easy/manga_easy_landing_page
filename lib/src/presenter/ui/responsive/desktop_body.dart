import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/widgets/social_media.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
