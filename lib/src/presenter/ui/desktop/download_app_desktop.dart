import 'package:flutter/material.dart';

class DownloadAppDesktop extends StatelessWidget {
  const DownloadAppDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://media.discordapp.net/attachments/1071892919633576117/1089615453946658916/image.png?width=583&height=650',
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 28, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Aqui você pode baixar a versão\nmais recente do nosso\naplicativo.',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(254, 61, 0, 1),
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
    );
  }
}
