import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/core/image_link_enum.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  final String text;
  final String textButton;
  final ImageLink imageLink;
  final Color color;

  const SocialMedia({
    super.key,
    required this.text,
    required this.textButton,
    required this.color,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageLink.linkBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: color,
        height: sizeHeight * 0.25,
        child: Column(
          children: [
            const SizedBox(height: 26),
            Image.network(
              imageLink.iconeLink,
              color: Colors.white,
              height: sizeHeight * 0.08,
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
              onPressed: () => launchUrl(Uri.parse(imageLink.redirectLink)),
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
