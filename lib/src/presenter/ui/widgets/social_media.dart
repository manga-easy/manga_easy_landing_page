import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  final String imageBackgroound;
  final String logoSocialMedia;
  final String text;
  final String textButton;

  const SocialMedia(
      {super.key,
      required this.imageBackgroound,
      required this.logoSocialMedia,
      required this.text,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageBackgroound),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: const Color.fromARGB(149, 0, 0, 0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Image.network(
              logoSocialMedia,
              color: Colors.white,
              height: sizeHeight * 0.10,
            ),
            const SizedBox(height: 16),
            Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              child: Text(
                textButton,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}