import 'package:flutter/material.dart';

class IntroduceTablet extends StatelessWidget {
  const IntroduceTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 70, 0, 70),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Desvende um mundo de aventuras e emoções através do Mangá Easy!!!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 20),
                Text(
                  'Estamos a sua espera!!!',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  'O Manga Easy é o ponto de partida para mergulhar em histórias cativantes, personagens fascinantes e ilustrações deslumbrantes. Baixe o aplicativo e deixe-se envolver pela magia do mangá. Entre nessa jornada épica conosco!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 17.5,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 17.5,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 17.5,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 17.5,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 70),
          Image.network(
              'https://media.discordapp.net/attachments/1071892919633576117/1092970375589154837/image_cropped.png?width=304&height=650',
              height: 400),
        ],
      ),
    );
  }
}
