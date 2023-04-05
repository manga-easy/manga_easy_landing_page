import 'package:flutter/material.dart';

class AboutProject extends StatelessWidget {
  final EdgeInsets padding;
  final double width;
  const AboutProject({super.key, required this.padding, required this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre o Projeto',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: width,
              child: Text(
                'Nunc mi erat, molestie id sagittis nec, fermentum at sem. Aenean tempus magna lorem, at euismod urna mattis quis. Aliquam tincidunt vestibulum arcu eget finibus. Duis facilisis tincidunt tortor, et vehicula leo posuere vel. Sed porta condimentum erat vitae mollis. In porttitor ullamcorper egestas. Mauris sit amet ex quis sem imperdiet ultricies.\nNunc mi erat, molestie id sagittis nec, fermentum at sem. Aenean tempus magna lorem, at euismod urna mattis quis. Aliquam tincidunt vestibulum arcu eget finibus.',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
