import 'package:flutter/material.dart';

class WelcomeDesktop extends StatelessWidget {
  const WelcomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Text('')
        ]),
        Container(
          color: Colors.orange,
        child: Image.network('https://media.discordapp.net/attachments/1071892919633576117/1090335104523587594/image.png?width=413&height=650'),
        ),
      ],
    );
  }
}
