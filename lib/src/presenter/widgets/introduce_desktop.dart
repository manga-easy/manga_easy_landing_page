import 'package:flutter/material.dart';

class IntroduceDesktop extends StatelessWidget {
  const IntroduceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Boas vindas !!!',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'Aqui você sempre encontrará\na versão mais recente do Mangá Easy.',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 125,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Baixar agora',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              width: MediaQuery.of(context).size.width * 0.5,
              color: Colors.orange,
              child: Image.network(
                  'https://media.discordapp.net/attachments/1071892919633576117/1092970375589154837/image_cropped.png?width=304&height=650'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Image.network(
              'https://media.discordapp.net/attachments/1071892919633576117/1091895232368476271/image.png?width=423&height=650',
            ),
          ),
        ),
      ],
    );
  }
}
