import 'package:flutter/material.dart';

class IntroduceMobile extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  const IntroduceMobile({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      padding: padding ?? const EdgeInsets.fromLTRB(30, 50, 30, 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Desvende um mundo de aventuras e emoções através do Mangá Easy!!!',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            'Estamos a sua espera!!!',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            'O Manga Easy é o ponto de partida para mergulhar em histórias cativantes, personagens fascinantes e ilustrações deslumbrantes. Baixe o aplicativo e deixe-se envolver pela magia do mangá. Entre nessa jornada épica conosco!',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
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
    );
  }
}
