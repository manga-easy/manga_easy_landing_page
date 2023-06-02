import 'package:flutter/material.dart';

class IntroduceDesktop extends StatelessWidget {
  const IntroduceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: SizedBox(
                width: size.width * 0.27,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Desvende um mundo de aventuras e emoções através do Mangá Easy!!!',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Estamos a sua espera!!!',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'O Manga Easy é o ponto de partida para mergulhar em histórias cativantes, personagens fascinantes e ilustrações deslumbrantes. Baixe o aplicativo e deixe-se envolver pela magia do mangá. Entre nessa jornada épica conosco!',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: size.height,
                width: size.width * 0.5,
                color: Colors.orange,
                child: Image.network(
                  'https://media.discordapp.net/attachments/1071892919633576117/1092970375589154837/image_cropped.png?width=304&height=650',
                ),
              ),
            ),
          ],
        ),
        Image.network(
          'https://media.discordapp.net/attachments/917529011935146036/1109250375854334032/latest.png?width=403&height=650',
        ),
      ],
    );
  }
}
