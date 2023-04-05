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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seja bem vindo a pagina do manga easy',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 20),
              Text(
                'Boas vindas !!!',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                'Aqui você sempre encontrará\na versão mais recente do Mangá Easy.',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 175,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Baixar agora',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
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
          const Spacer(),
          Image.network(
            'https://media.discordapp.net/attachments/1071892919633576117/1092970375589154837/image_cropped.png?width=304&height=650',
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
