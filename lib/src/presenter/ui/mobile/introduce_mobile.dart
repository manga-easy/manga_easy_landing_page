import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntroduceMobile extends StatelessWidget {
  const IntroduceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 33, 30, 43),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Seja bem vindo a pagina do manga easy',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 20),
          Text(
            'Boas vindas !!!',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 20),
          Text(
            'Aqui você sempre encontrará\na versão mais recente do Mangá Easy.',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 125,
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
                size: 40,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
