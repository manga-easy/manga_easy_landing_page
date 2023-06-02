import 'package:flutter/material.dart';

class AboutProject extends StatelessWidget {
  final EdgeInsets padding;
  final double? imageHeight;
  final bool isMobile;

  const AboutProject(
      {super.key,
      required this.padding,
      this.imageHeight,
       this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             
              children: [
                Text(
                  'Sobre o Projeto',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 20),
                Text(
                  'Nunc mi erat, molestie id sagittis nec, fermentum at sem. Aenean tempus magna lorem, at euismod urna mattis quis. Aliquam tincidunt vestibulum arcu eget finibus. Duis facilisis tincidunt tortor, et vehicula leo posuere vel. Sed porta condimentum erat vitae mollis. In porttitor ullamcorper egestas. Mauris sit amet ex quis sem imperdiet ultricies.\nNunc mi erat, molestie id sagittis nec, fermentum at sem. Aenean tempus magna lorem, at euismod urna mattis quis. Aliquam tincidunt vestibulum arcu eget finibus.',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const Spacer(),
          isMobile
              ? const SizedBox.shrink()
              : Image.network(
                  'https://media.discordapp.net/attachments/1071892919633576117/1092987662366941315/fotinha_cropped.png?width=504&height=650',
                  height: imageHeight ?? 400,
                ),
        ],
      ),
    );
  }
}
