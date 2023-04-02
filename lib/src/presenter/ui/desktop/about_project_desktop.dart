import 'package:flutter/material.dart';

class AboutProjectDesktop extends StatelessWidget {
  const AboutProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 65, top: 200, bottom: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Sobre o Projeto',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 575,
              child: Text(
                'Nunc mi erat, molestie id sagittis nec, fermentum at sem. Aenean tempus magna lorem, at euismod urna mattis quis. Aliquam tincidunt vestibulum arcu eget finibus. Duis facilisis tincidunt tortor, et vehicula leo posuere vel. Sed porta condimentum erat vitae mollis. In porttitor ullamcorper egestas. Mauris sit amet ex quis sem imperdiet ultricies.\nNunc mi erat, molestie id sagittis nec, fermentum at sem. Aenean tempus magna lorem, at euismod urna mattis quis. Aliquam tincidunt vestibulum arcu eget finibus.',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
